'use client';
import { Editor } from '@monaco-editor/react';
import { useState, useRef } from 'react'; // Añadir useRef

const API_URL = 'http://localhost:5255';

export default function Home() {
  const [code, setCode] = useState<string>('');
  const [output, setOutput] = useState<string>('');
  const [hasError, setHasError] = useState<boolean>(false);
  const [errorMessage, setErrorMessage] = useState<string>('');
  const [showError, setShowError] = useState<boolean>(false);
  const [fileName, setFileName] = useState<string>(''); // Añadir estado para el nombre del archivo
  
  // Referencia para el input de tipo file (oculto)
  const fileInputRef = useRef<HTMLInputElement>(null);

  // Función para copiar el texto de la consola al portapapeles
  const handleCopyOutput = () => {
    navigator.clipboard.writeText(output)
      .then(() => {
        // Opcional: mostrar una confirmación o feedback temporal
        const tempOutput = output;
        setOutput('¡Texto copiado al portapapeles!');
        setTimeout(() => {
          setOutput(tempOutput);
        }, 1000);
      })
      .catch(err => {
        console.error('Error al copiar texto: ', err);
      });
  };

  const handleExecute = () => {
    fetch(`${API_URL}/Compile`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({ code }),
    })
      .then((response) => response.json())
      .then((data) => {
        if (data.success) {
          // Ejecución exitosa
          setOutput(data.result || 'Ejecución completada sin salida.');
          setHasError(false);
          setShowError(false);
        } else {
          // Error en la ejecución
          setOutput('Se encontraron errores durante la ejecución.');
          setErrorMessage(data.error || 'Error desconocido');
          setHasError(true);
          setShowError(true); // Mostrar automáticamente el error
        }
      })
      .catch((error) => {
        console.error('Error:', error);
        setOutput('Error de conexión con el servidor.');
        setErrorMessage('No se pudo conectar con el servidor.');
        setHasError(true);
        setShowError(true);
      });
  };

  const toggleErrorDisplay = () => {
    setShowError(!showError);
  };

  // Función para abrir el selector de archivos
  const handleOpenFileSelector = () => {
    if (fileInputRef.current) {
      fileInputRef.current.click();
    }
  };

  // Función para cargar el archivo seleccionado
  const handleFileLoad = (e: React.ChangeEvent<HTMLInputElement>) => {
    const file = e.target.files?.[0];
    if (!file) return;

    // Verificar extensión
    if (!file.name.endsWith('.glt')) {
      setOutput('Error: Solo se permiten archivos con extensión .glt');
      setHasError(true);
      setErrorMessage('Formato de archivo no válido. Solo se aceptan archivos .glt');
      setShowError(true);
      return;
    }

    setFileName(file.name);

    // Leer el contenido del archivo
    const reader = new FileReader();
    reader.onload = (event) => {
      const content = event.target?.result as string;
      setCode(content);
      setOutput(`Archivo "${file.name}" cargado correctamente.`);
      setHasError(false);
      setShowError(false);
    };

    reader.onerror = () => {
      setOutput('Error al leer el archivo.');
      setHasError(true);
      setErrorMessage('No se pudo leer el contenido del archivo.');
      setShowError(true);
    };

    reader.readAsText(file);
    
    // Limpiar el input para permitir cargar el mismo archivo nuevamente
    e.target.value = '';
  };

  return (
    <div className='flex flex-col items-center justify-center min-h-screen bg-gray-800 text-white p-6'>
      <h1 className='text-3xl font-bold mb-8'>GoLight</h1>
      
      <div className='flex w-full max-w-6xl gap-6'>
        {/* Editor de código - Lado izquierdo */}
        <div className='w-1/2 flex flex-col'>
          <div className='flex justify-between items-center mb-2'>
            <h2 className='text-xl font-semibold'>Editor de Código</h2>
            
            {/* Nombre del archivo actual - Nuevo */}
            {fileName && (
              <span className='text-sm text-gray-400'>
                Archivo: {fileName}
              </span>
            )}
          </div>
          
          <div className='border border-gray-700 rounded-md overflow-hidden'>
            <Editor
              height='70vh'
              defaultLanguage='go'
              theme='vs-dark'
              value={code}
              onChange={(value) => setCode(value || '')}
              options={{
                minimap: { enabled: false },
                scrollBeyondLastLine: false,
                fontSize: 14,
                lineNumbers: 'on',
              }}
            />
          </div>
          
          {/* Botones - Modificado para incluir ambos botones */}
          <div className='mt-4 flex space-x-4 justify-center'>
            <button
              className='bg-blue-500 hover:bg-blue-700 text-white font-bold py-3 px-6 rounded flex items-center'
              onClick={handleExecute}
            >
              <svg className="w-5 h-5 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M14.752 11.168l-3.197-2.132A1 1 0 0010 9.87v4.263a1 1 0 001.555.832l3.197-2.132a1 1 0 000-1.664z" />
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
              </svg>
              Ejecutar
            </button>
            
            {/* Botón para cargar archivo - Nuevo */}
            <button
              className='bg-green-600 hover:bg-green-700 text-white font-bold py-3 px-6 rounded flex items-center'
              onClick={handleOpenFileSelector}
            >
              <svg className="w-5 h-5 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M7 16a4 4 0 01-.88-7.903A5 5 0 1115.9 6L16 6a5 5 0 011 9.9M15 13l-3-3m0 0l-3 3m3-3v12" />
              </svg>
              Cargar Archivo
            </button>
            
            {/* Input oculto para seleccionar archivos - Nuevo */}
            <input
              type="file"
              ref={fileInputRef}
              onChange={handleFileLoad}
              accept=".glt"
              className="hidden"
            />
          </div>
        </div>

        {/* Terminal Output - Lado derecho */}
        <div className='w-1/2 flex flex-col'>
          <div className='flex justify-between items-center mb-2'>
            <h2 className='text-xl font-semibold'>Consola</h2>
            
            {/* Botón para copiar el texto de la consola */}
            <button
              className='bg-gray-600 hover:bg-gray-700 text-white text-sm py-1 px-2 rounded flex items-center'
              onClick={handleCopyOutput}
              title="Copiar texto de la consola"
            >
              <svg className="w-4 h-4 mr-1" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M8 16H6a2 2 0 01-2-2V6a2 2 0 012-2h8a2 2 0 012 2v2m-6 12h8a2 2 0 002-2v-8a2 2 0 00-2-2h-8a2 2 0 00-2 2v8a2 2 0 002 2z" />
              </svg>
              Copiar
            </button>
          </div>
          
          <div className='bg-gray-900 text-green-400 font-mono p-6 rounded-md border border-gray-700 overflow-auto h-[70vh]'>
            <pre className='whitespace-pre-wrap'>{output || 'Ejecuta código para ver el resultado...'}</pre>
            
            {/* Mostrar errores cuando hay errores y showError es true */}
            {hasError && showError && (
              <div className='mt-4 p-4 bg-red-900 text-white rounded-md'>
                <h3 className='font-bold mb-2'>Error:</h3>
                <pre className='whitespace-pre-wrap'>{errorMessage}</pre>
              </div>
            )}
          </div>
          
          {/* Botón de errores (solo visible cuando hay errores) */}
          {hasError && (
            <button
              className='mt-4 bg-red-600 hover:bg-red-700 text-white font-bold py-2 px-4 rounded flex items-center justify-center'
              onClick={toggleErrorDisplay}
            >
              {/* Ícono de error */}
              <svg className="w-5 h-5 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0 2.502-1.667 1.732-3L13.732 4c-.77-1.333-2.694-1.333-3.464 0L3.34 16c-.77 1.333.192 3 1.732 3z" />
              </svg>
              {showError ? 'Ocultar Errores' : 'Mostrar Errores'}
            </button>
          )}
        </div>
      </div>
      
      <footer className='mt-8 text-gray-400 text-sm'>
        <p>OLC2 - Práctica 1 - 202109705</p>
      </footer>
    </div>
  );
}