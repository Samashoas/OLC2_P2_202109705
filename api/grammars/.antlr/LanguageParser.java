// Generated from /home/juan-pablo/Escritorio/Uni/OLC2/C#/OLC2_P1_202109705/api/grammars/Language.g4 by ANTLR 4.13.1
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast", "CheckReturnValue"})
public class LanguageParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.13.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, T__8=9, 
		T__9=10, T__10=11, T__11=12, T__12=13, T__13=14, T__14=15, T__15=16, T__16=17, 
		T__17=18, T__18=19, T__19=20, T__20=21, T__21=22, T__22=23, T__23=24, 
		T__24=25, T__25=26, T__26=27, T__27=28, T__28=29, T__29=30, T__30=31, 
		T__31=32, T__32=33, T__33=34, T__34=35, T__35=36, T__36=37, T__37=38, 
		T__38=39, T__39=40, T__40=41, T__41=42, T__42=43, T__43=44, T__44=45, 
		T__45=46, T__46=47, T__47=48, T__48=49, T__49=50, T__50=51, T__51=52, 
		T__52=53, TYPE=54, BOOL=55, FLOAT=56, INT=57, STRING=58, RUNE=59, ID=60, 
		WS=61, COMMENT=62, ML_COMMENT=63;
	public static final int
		RULE_program = 0, RULE_dcl = 1, RULE_varDcl = 2, RULE_listaArg = 3, RULE_funcDcl = 4, 
		RULE_structDcl = 5, RULE_structParams = 6, RULE_funcParams = 7, RULE_paramDcl = 8, 
		RULE_stmt = 9, RULE_switchCase = 10, RULE_rangeInit = 11, RULE_forInit = 12, 
		RULE_condition = 13, RULE_expr = 14, RULE_call = 15, RULE_args = 16, RULE_structArgs = 17;
	private static String[] makeRuleNames() {
		return new String[] {
			"program", "dcl", "varDcl", "listaArg", "funcDcl", "structDcl", "structParams", 
			"funcParams", "paramDcl", "stmt", "switchCase", "rangeInit", "forInit", 
			"condition", "expr", "call", "args", "structArgs"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'var'", "'='", "':='", "'[]'", "'{'", "'}'", "'[][]'", "';'", 
			"','", "'func'", "'('", "')'", "'struct'", "'fmt.Println('", "'if'", 
			"'else'", "'for'", "'switch'", "'continue'", "'break'", "'return'", "'case'", 
			"':'", "'default'", "'range'", "'['", "']'", "'.'", "'len'", "'append'", 
			"'slices.Index'", "'strings.Join'", "'strconv.Atoi'", "'strconv.ParseFloat'", 
			"'reflect.TypeOf'", "'-'", "'!'", "'++'", "'--'", "'*'", "'/'", "'%'", 
			"'+'", "'<'", "'>'", "'<='", "'>='", "'=='", "'!='", "'&&'", "'||'", 
			"'+='", "'-='"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, "TYPE", "BOOL", "FLOAT", "INT", "STRING", 
			"RUNE", "ID", "WS", "COMMENT", "ML_COMMENT"
		};
	}
	private static final String[] _SYMBOLIC_NAMES = makeSymbolicNames();
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}

	@Override
	public String getGrammarFileName() { return "Language.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public LanguageParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ProgramContext extends ParserRuleContext {
		public List<DclContext> dcl() {
			return getRuleContexts(DclContext.class);
		}
		public DclContext dcl(int i) {
			return getRuleContext(DclContext.class,i);
		}
		public ProgramContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_program; }
	}

	public final ProgramContext program() throws RecognitionException {
		ProgramContext _localctx = new ProgramContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_program);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(39);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & 2287828885049371682L) != 0)) {
				{
				{
				setState(36);
				dcl();
				}
				}
				setState(41);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class DclContext extends ParserRuleContext {
		public VarDclContext varDcl() {
			return getRuleContext(VarDclContext.class,0);
		}
		public FuncDclContext funcDcl() {
			return getRuleContext(FuncDclContext.class,0);
		}
		public StructDclContext structDcl() {
			return getRuleContext(StructDclContext.class,0);
		}
		public StmtContext stmt() {
			return getRuleContext(StmtContext.class,0);
		}
		public DclContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_dcl; }
	}

	public final DclContext dcl() throws RecognitionException {
		DclContext _localctx = new DclContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_dcl);
		try {
			setState(46);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,1,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(42);
				varDcl();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(43);
				funcDcl();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(44);
				structDcl();
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(45);
				stmt();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class VarDclContext extends ParserRuleContext {
		public VarDclContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_varDcl; }
	 
		public VarDclContext() { }
		public void copyFrom(VarDclContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ImpDerContext extends VarDclContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ImpDerContext(VarDclContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class StructVarDclContext extends VarDclContext {
		public List<TerminalNode> ID() { return getTokens(LanguageParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(LanguageParser.ID, i);
		}
		public StructArgsContext structArgs() {
			return getRuleContext(StructArgsContext.class,0);
		}
		public StructVarDclContext(VarDclContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class VarImpNoExprContext extends VarDclContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public TerminalNode TYPE() { return getToken(LanguageParser.TYPE, 0); }
		public VarImpNoExprContext(VarDclContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class VarImpExprContext extends VarDclContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public TerminalNode TYPE() { return getToken(LanguageParser.TYPE, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public VarImpExprContext(VarDclContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class SliceVacioContext extends VarDclContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public TerminalNode TYPE() { return getToken(LanguageParser.TYPE, 0); }
		public SliceVacioContext(VarDclContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class SliceDclContext extends VarDclContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public TerminalNode TYPE() { return getToken(LanguageParser.TYPE, 0); }
		public ArgsContext args() {
			return getRuleContext(ArgsContext.class,0);
		}
		public SliceDclContext(VarDclContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class MatrixDclContext extends VarDclContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public TerminalNode TYPE() { return getToken(LanguageParser.TYPE, 0); }
		public ListaArgContext listaArg() {
			return getRuleContext(ListaArgContext.class,0);
		}
		public MatrixDclContext(VarDclContext ctx) { copyFrom(ctx); }
	}

	public final VarDclContext varDcl() throws RecognitionException {
		VarDclContext _localctx = new VarDclContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_varDcl);
		try {
			setState(87);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,3,_ctx) ) {
			case 1:
				_localctx = new VarImpExprContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(48);
				match(T__0);
				setState(49);
				match(ID);
				setState(50);
				match(TYPE);
				setState(51);
				match(T__1);
				setState(52);
				expr(0);
				}
				break;
			case 2:
				_localctx = new VarImpNoExprContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(53);
				match(T__0);
				setState(54);
				match(ID);
				setState(55);
				match(TYPE);
				}
				break;
			case 3:
				_localctx = new ImpDerContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(56);
				match(ID);
				{
				setState(57);
				match(T__2);
				}
				setState(58);
				expr(0);
				}
				break;
			case 4:
				_localctx = new SliceDclContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(59);
				match(ID);
				setState(60);
				match(T__2);
				setState(61);
				match(T__3);
				setState(62);
				match(TYPE);
				setState(63);
				match(T__4);
				setState(64);
				args();
				setState(65);
				match(T__5);
				}
				break;
			case 5:
				_localctx = new SliceVacioContext(_localctx);
				enterOuterAlt(_localctx, 5);
				{
				setState(67);
				match(ID);
				setState(68);
				match(T__3);
				setState(69);
				match(TYPE);
				}
				break;
			case 6:
				_localctx = new MatrixDclContext(_localctx);
				enterOuterAlt(_localctx, 6);
				{
				setState(70);
				match(ID);
				setState(71);
				match(T__2);
				setState(72);
				match(T__6);
				setState(73);
				match(TYPE);
				setState(74);
				match(T__4);
				setState(75);
				listaArg();
				setState(76);
				match(T__5);
				}
				break;
			case 7:
				_localctx = new StructVarDclContext(_localctx);
				enterOuterAlt(_localctx, 7);
				{
				setState(78);
				match(ID);
				setState(79);
				match(ID);
				setState(80);
				match(T__1);
				setState(81);
				match(T__4);
				setState(82);
				structArgs();
				setState(83);
				match(T__5);
				setState(85);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,2,_ctx) ) {
				case 1:
					{
					setState(84);
					match(T__7);
					}
					break;
				}
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ListaArgContext extends ParserRuleContext {
		public List<ArgsContext> args() {
			return getRuleContexts(ArgsContext.class);
		}
		public ArgsContext args(int i) {
			return getRuleContext(ArgsContext.class,i);
		}
		public ListaArgContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_listaArg; }
	}

	public final ListaArgContext listaArg() throws RecognitionException {
		ListaArgContext _localctx = new ListaArgContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_listaArg);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(89);
			match(T__4);
			setState(90);
			args();
			setState(91);
			match(T__5);
			setState(93);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==T__8) {
				{
				setState(92);
				match(T__8);
				}
			}

			setState(103);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__4) {
				{
				{
				setState(95);
				match(T__4);
				setState(96);
				args();
				setState(97);
				match(T__5);
				setState(99);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__8) {
					{
					setState(98);
					match(T__8);
					}
				}

				}
				}
				setState(105);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class FuncDclContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public FuncParamsContext funcParams() {
			return getRuleContext(FuncParamsContext.class,0);
		}
		public TerminalNode TYPE() { return getToken(LanguageParser.TYPE, 0); }
		public List<DclContext> dcl() {
			return getRuleContexts(DclContext.class);
		}
		public DclContext dcl(int i) {
			return getRuleContext(DclContext.class,i);
		}
		public FuncDclContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_funcDcl; }
	}

	public final FuncDclContext funcDcl() throws RecognitionException {
		FuncDclContext _localctx = new FuncDclContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_funcDcl);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(106);
			match(T__9);
			setState(107);
			match(ID);
			setState(108);
			match(T__10);
			setState(110);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==ID) {
				{
				setState(109);
				funcParams();
				}
			}

			setState(112);
			match(T__11);
			setState(114);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==TYPE) {
				{
				setState(113);
				match(TYPE);
				}
			}

			setState(116);
			match(T__4);
			setState(120);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & 2287828885049371682L) != 0)) {
				{
				{
				setState(117);
				dcl();
				}
				}
				setState(122);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(123);
			match(T__5);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class StructDclContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public List<StructParamsContext> structParams() {
			return getRuleContexts(StructParamsContext.class);
		}
		public StructParamsContext structParams(int i) {
			return getRuleContext(StructParamsContext.class,i);
		}
		public StructDclContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_structDcl; }
	}

	public final StructDclContext structDcl() throws RecognitionException {
		StructDclContext _localctx = new StructDclContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_structDcl);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(125);
			match(T__12);
			setState(126);
			match(ID);
			setState(127);
			match(T__4);
			setState(129); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(128);
				structParams();
				}
				}
				setState(131); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( _la==TYPE || _la==ID );
			setState(133);
			match(T__5);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class StructParamsContext extends ParserRuleContext {
		public List<TerminalNode> ID() { return getTokens(LanguageParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(LanguageParser.ID, i);
		}
		public TerminalNode TYPE() { return getToken(LanguageParser.TYPE, 0); }
		public StructParamsContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_structParams; }
	}

	public final StructParamsContext structParams() throws RecognitionException {
		StructParamsContext _localctx = new StructParamsContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_structParams);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(135);
			_la = _input.LA(1);
			if ( !(_la==TYPE || _la==ID) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			setState(136);
			match(ID);
			setState(138);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==T__7) {
				{
				setState(137);
				match(T__7);
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class FuncParamsContext extends ParserRuleContext {
		public List<ParamDclContext> paramDcl() {
			return getRuleContexts(ParamDclContext.class);
		}
		public ParamDclContext paramDcl(int i) {
			return getRuleContext(ParamDclContext.class,i);
		}
		public FuncParamsContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_funcParams; }
	}

	public final FuncParamsContext funcParams() throws RecognitionException {
		FuncParamsContext _localctx = new FuncParamsContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_funcParams);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(140);
			paramDcl();
			setState(145);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__8) {
				{
				{
				setState(141);
				match(T__8);
				setState(142);
				paramDcl();
				}
				}
				setState(147);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ParamDclContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public TerminalNode TYPE() { return getToken(LanguageParser.TYPE, 0); }
		public ParamDclContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_paramDcl; }
	}

	public final ParamDclContext paramDcl() throws RecognitionException {
		ParamDclContext _localctx = new ParamDclContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_paramDcl);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(148);
			match(ID);
			setState(149);
			match(TYPE);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class StmtContext extends ParserRuleContext {
		public StmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_stmt; }
	 
		public StmtContext() { }
		public void copyFrom(StmtContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ContinueStmtContext extends StmtContext {
		public ContinueStmtContext(StmtContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class SwitchStmtContext extends StmtContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public List<SwitchCaseContext> switchCase() {
			return getRuleContexts(SwitchCaseContext.class);
		}
		public SwitchCaseContext switchCase(int i) {
			return getRuleContext(SwitchCaseContext.class,i);
		}
		public SwitchStmtContext(StmtContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class PrintStmtContext extends StmtContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public PrintStmtContext(StmtContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class IfStmtContext extends StmtContext {
		public ConditionContext condition() {
			return getRuleContext(ConditionContext.class,0);
		}
		public List<StmtContext> stmt() {
			return getRuleContexts(StmtContext.class);
		}
		public StmtContext stmt(int i) {
			return getRuleContext(StmtContext.class,i);
		}
		public IfStmtContext(StmtContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprStmtContext extends StmtContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ExprStmtContext(StmtContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class BreakStmtContext extends StmtContext {
		public BreakStmtContext(StmtContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class BlockStmtContext extends StmtContext {
		public List<DclContext> dcl() {
			return getRuleContexts(DclContext.class);
		}
		public DclContext dcl(int i) {
			return getRuleContext(DclContext.class,i);
		}
		public BlockStmtContext(StmtContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ForStmtContext extends StmtContext {
		public StmtContext stmt() {
			return getRuleContext(StmtContext.class,0);
		}
		public ForInitContext forInit() {
			return getRuleContext(ForInitContext.class,0);
		}
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public ConditionContext condition() {
			return getRuleContext(ConditionContext.class,0);
		}
		public RangeInitContext rangeInit() {
			return getRuleContext(RangeInitContext.class,0);
		}
		public ForStmtContext(StmtContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ReturnStmtContext extends StmtContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ReturnStmtContext(StmtContext ctx) { copyFrom(ctx); }
	}

	public final StmtContext stmt() throws RecognitionException {
		StmtContext _localctx = new StmtContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_stmt);
		int _la;
		try {
			setState(209);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,20,_ctx) ) {
			case 1:
				_localctx = new ExprStmtContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(151);
				expr(0);
				}
				break;
			case 2:
				_localctx = new PrintStmtContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(152);
				match(T__13);
				setState(161);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & 2287828885045250080L) != 0)) {
					{
					setState(153);
					expr(0);
					setState(158);
					_errHandler.sync(this);
					_la = _input.LA(1);
					while (_la==T__8) {
						{
						{
						setState(154);
						match(T__8);
						setState(155);
						expr(0);
						}
						}
						setState(160);
						_errHandler.sync(this);
						_la = _input.LA(1);
					}
					}
				}

				setState(163);
				match(T__11);
				}
				break;
			case 3:
				_localctx = new BlockStmtContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(164);
				match(T__4);
				setState(168);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while ((((_la) & ~0x3f) == 0 && ((1L << _la) & 2287828885049371682L) != 0)) {
					{
					{
					setState(165);
					dcl();
					}
					}
					setState(170);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				setState(171);
				match(T__5);
				}
				break;
			case 4:
				_localctx = new IfStmtContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(172);
				match(T__14);
				setState(173);
				condition();
				setState(174);
				stmt();
				setState(177);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,16,_ctx) ) {
				case 1:
					{
					setState(175);
					match(T__15);
					setState(176);
					stmt();
					}
					break;
				}
				}
				break;
			case 5:
				_localctx = new ForStmtContext(_localctx);
				enterOuterAlt(_localctx, 5);
				{
				setState(179);
				match(T__16);
				setState(188);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,17,_ctx) ) {
				case 1:
					{
					setState(180);
					forInit();
					setState(181);
					match(T__7);
					setState(182);
					expr(0);
					setState(183);
					match(T__7);
					setState(184);
					expr(0);
					}
					break;
				case 2:
					{
					setState(186);
					condition();
					}
					break;
				case 3:
					{
					setState(187);
					rangeInit();
					}
					break;
				}
				setState(190);
				stmt();
				}
				break;
			case 6:
				_localctx = new SwitchStmtContext(_localctx);
				enterOuterAlt(_localctx, 6);
				{
				setState(192);
				match(T__17);
				setState(193);
				expr(0);
				setState(194);
				match(T__4);
				setState(198);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==T__21 || _la==T__23) {
					{
					{
					setState(195);
					switchCase();
					}
					}
					setState(200);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				setState(201);
				match(T__5);
				}
				break;
			case 7:
				_localctx = new ContinueStmtContext(_localctx);
				enterOuterAlt(_localctx, 7);
				{
				setState(203);
				match(T__18);
				}
				break;
			case 8:
				_localctx = new BreakStmtContext(_localctx);
				enterOuterAlt(_localctx, 8);
				{
				setState(204);
				match(T__19);
				}
				break;
			case 9:
				_localctx = new ReturnStmtContext(_localctx);
				enterOuterAlt(_localctx, 9);
				{
				setState(205);
				match(T__20);
				setState(207);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,19,_ctx) ) {
				case 1:
					{
					setState(206);
					expr(0);
					}
					break;
				}
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class SwitchCaseContext extends ParserRuleContext {
		public SwitchCaseContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_switchCase; }
	 
		public SwitchCaseContext() { }
		public void copyFrom(SwitchCaseContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class DefaultClauseContext extends SwitchCaseContext {
		public List<StmtContext> stmt() {
			return getRuleContexts(StmtContext.class);
		}
		public StmtContext stmt(int i) {
			return getRuleContext(StmtContext.class,i);
		}
		public DefaultClauseContext(SwitchCaseContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class CaseClauseContext extends SwitchCaseContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public List<StmtContext> stmt() {
			return getRuleContexts(StmtContext.class);
		}
		public StmtContext stmt(int i) {
			return getRuleContext(StmtContext.class,i);
		}
		public CaseClauseContext(SwitchCaseContext ctx) { copyFrom(ctx); }
	}

	public final SwitchCaseContext switchCase() throws RecognitionException {
		SwitchCaseContext _localctx = new SwitchCaseContext(_ctx, getState());
		enterRule(_localctx, 20, RULE_switchCase);
		int _la;
		try {
			setState(228);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__21:
				_localctx = new CaseClauseContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(211);
				match(T__21);
				setState(212);
				expr(0);
				setState(213);
				match(T__22);
				setState(217);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while ((((_la) & ~0x3f) == 0 && ((1L << _la) & 2287828885049362464L) != 0)) {
					{
					{
					setState(214);
					stmt();
					}
					}
					setState(219);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
				break;
			case T__23:
				_localctx = new DefaultClauseContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(220);
				match(T__23);
				setState(221);
				match(T__22);
				setState(225);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while ((((_la) & ~0x3f) == 0 && ((1L << _la) & 2287828885049362464L) != 0)) {
					{
					{
					setState(222);
					stmt();
					}
					}
					setState(227);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class RangeInitContext extends ParserRuleContext {
		public List<TerminalNode> ID() { return getTokens(LanguageParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(LanguageParser.ID, i);
		}
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public RangeInitContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_rangeInit; }
	}

	public final RangeInitContext rangeInit() throws RecognitionException {
		RangeInitContext _localctx = new RangeInitContext(_ctx, getState());
		enterRule(_localctx, 22, RULE_rangeInit);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(230);
			match(ID);
			setState(231);
			match(T__8);
			setState(232);
			match(ID);
			setState(233);
			match(T__2);
			setState(234);
			match(T__24);
			setState(235);
			expr(0);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ForInitContext extends ParserRuleContext {
		public VarDclContext varDcl() {
			return getRuleContext(VarDclContext.class,0);
		}
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ForInitContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_forInit; }
	}

	public final ForInitContext forInit() throws RecognitionException {
		ForInitContext _localctx = new ForInitContext(_ctx, getState());
		enterRule(_localctx, 24, RULE_forInit);
		try {
			setState(239);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,24,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(237);
				varDcl();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(238);
				expr(0);
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ConditionContext extends ParserRuleContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ConditionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_condition; }
	}

	public final ConditionContext condition() throws RecognitionException {
		ConditionContext _localctx = new ConditionContext(_ctx, getState());
		enterRule(_localctx, 26, RULE_condition);
		try {
			setState(246);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,25,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(241);
				match(T__10);
				setState(242);
				expr(0);
				setState(243);
				match(T__11);
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(245);
				expr(0);
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ExprContext extends ParserRuleContext {
		public ExprContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expr; }
	 
		public ExprContext() { }
		public void copyFrom(ExprContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class StructLiteralContext extends ExprContext {
		public StructArgsContext structArgs() {
			return getRuleContext(StructArgsContext.class,0);
		}
		public StructLiteralContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ParensContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ParensContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class MatrixUpdateContext extends ExprContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public MatrixUpdateContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class StringContext extends ExprContext {
		public TerminalNode STRING() { return getToken(LanguageParser.STRING, 0); }
		public StringContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class StructAssignmentContext extends ExprContext {
		public List<TerminalNode> ID() { return getTokens(LanguageParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(LanguageParser.ID, i);
		}
		public StructArgsContext structArgs() {
			return getRuleContext(StructArgsContext.class,0);
		}
		public StructAssignmentContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class AtoiStmtContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public AtoiStmtContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class LogicalOrContext extends ExprContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public LogicalOrContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class MatrixAccessContext extends ExprContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public MatrixAccessContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class AssignmentContext extends ExprContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public AssignmentContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class StructAccessContext extends ExprContext {
		public TerminalNode TYPE() { return getToken(LanguageParser.TYPE, 0); }
		public List<TerminalNode> ID() { return getTokens(LanguageParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(LanguageParser.ID, i);
		}
		public StructAccessContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class LenMatrixContext extends ExprContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public LenMatrixContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ArrayAccessContext extends ExprContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ArrayAccessContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class IdentifierContext extends ExprContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public IdentifierContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class MDmodContext extends ExprContext {
		public Token op;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public MDmodContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class LogicalAndContext extends ExprContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public LogicalAndContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class EqualityContext extends ExprContext {
		public Token op;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public EqualityContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class BooleanContext extends ExprContext {
		public TerminalNode BOOL() { return getToken(LanguageParser.BOOL, 0); }
		public BooleanContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class StructUpdateContext extends ExprContext {
		public List<TerminalNode> ID() { return getTokens(LanguageParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(LanguageParser.ID, i);
		}
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public StructUpdateContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ImplicitAddSubContext extends ExprContext {
		public Token op;
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ImplicitAddSubContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class SliceIndexContext extends ExprContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public SliceIndexContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class AddSubContext extends ExprContext {
		public Token op;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public AddSubContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class TypeOfStmtContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public TypeOfStmtContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class RelationalContext extends ExprContext {
		public Token op;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public RelationalContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class IncDecContext extends ExprContext {
		public Token op;
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public IncDecContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ArrayUpdateContext extends ExprContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public ArrayUpdateContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class StructAccessInfoContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public StructAccessInfoContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ParseFloatStmtContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ParseFloatStmtContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class IntegerContext extends ExprContext {
		public TerminalNode INT() { return getToken(LanguageParser.INT, 0); }
		public IntegerContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class FloatContext extends ExprContext {
		public TerminalNode FLOAT() { return getToken(LanguageParser.FLOAT, 0); }
		public FloatContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class StringJoinContext extends ExprContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public StringJoinContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class MatrixAppendContext extends ExprContext {
		public List<TerminalNode> ID() { return getTokens(LanguageParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(LanguageParser.ID, i);
		}
		public MatrixAppendContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class AppendContext extends ExprContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public AppendContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class LenContext extends ExprContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public LenContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class CallerContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public List<CallContext> call() {
			return getRuleContexts(CallContext.class);
		}
		public CallContext call(int i) {
			return getRuleContext(CallContext.class,i);
		}
		public CallerContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class NegateContext extends ExprContext {
		public Token op;
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public NegateContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class RuneContext extends ExprContext {
		public TerminalNode RUNE() { return getToken(LanguageParser.RUNE, 0); }
		public RuneContext(ExprContext ctx) { copyFrom(ctx); }
	}

	public final ExprContext expr() throws RecognitionException {
		return expr(0);
	}

	private ExprContext expr(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		ExprContext _localctx = new ExprContext(_ctx, _parentState);
		ExprContext _prevctx = _localctx;
		int _startState = 28;
		enterRecursionRule(_localctx, 28, RULE_expr, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(380);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,29,_ctx) ) {
			case 1:
				{
				_localctx = new ParensContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;

				setState(249);
				match(T__10);
				setState(250);
				expr(0);
				setState(251);
				match(T__11);
				}
				break;
			case 2:
				{
				_localctx = new FloatContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(253);
				match(FLOAT);
				}
				break;
			case 3:
				{
				_localctx = new IntegerContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(254);
				match(INT);
				}
				break;
			case 4:
				{
				_localctx = new BooleanContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(255);
				match(BOOL);
				}
				break;
			case 5:
				{
				_localctx = new RuneContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(256);
				match(RUNE);
				}
				break;
			case 6:
				{
				_localctx = new StringContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(257);
				match(STRING);
				}
				break;
			case 7:
				{
				_localctx = new IdentifierContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(258);
				match(ID);
				}
				break;
			case 8:
				{
				_localctx = new StructLiteralContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(259);
				match(T__4);
				setState(260);
				structArgs();
				setState(261);
				match(T__5);
				}
				break;
			case 9:
				{
				_localctx = new MatrixUpdateContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(263);
				match(ID);
				setState(264);
				match(T__25);
				setState(265);
				expr(0);
				setState(266);
				match(T__26);
				setState(267);
				match(T__25);
				setState(268);
				expr(0);
				setState(269);
				match(T__26);
				setState(270);
				match(T__1);
				setState(271);
				expr(27);
				}
				break;
			case 10:
				{
				_localctx = new MatrixAccessContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(273);
				match(ID);
				setState(274);
				match(T__25);
				setState(275);
				expr(0);
				setState(276);
				match(T__26);
				setState(277);
				match(T__25);
				setState(278);
				expr(0);
				setState(279);
				match(T__26);
				}
				break;
			case 11:
				{
				_localctx = new ArrayUpdateContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(281);
				match(ID);
				setState(282);
				match(T__25);
				setState(283);
				expr(0);
				setState(284);
				match(T__26);
				setState(285);
				match(T__1);
				setState(286);
				expr(25);
				}
				break;
			case 12:
				{
				_localctx = new ArrayAccessContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(288);
				match(ID);
				setState(289);
				match(T__25);
				setState(290);
				expr(0);
				setState(291);
				match(T__26);
				}
				break;
			case 13:
				{
				_localctx = new StructUpdateContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(293);
				match(ID);
				setState(294);
				match(T__27);
				setState(295);
				match(ID);
				setState(296);
				match(T__1);
				setState(297);
				expr(0);
				setState(299);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,26,_ctx) ) {
				case 1:
					{
					setState(298);
					match(T__7);
					}
					break;
				}
				}
				break;
			case 14:
				{
				_localctx = new StructAccessContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(301);
				match(TYPE);
				setState(302);
				match(ID);
				setState(303);
				match(T__1);
				setState(304);
				match(ID);
				setState(305);
				match(T__27);
				setState(306);
				match(ID);
				setState(308);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,27,_ctx) ) {
				case 1:
					{
					setState(307);
					match(T__7);
					}
					break;
				}
				}
				break;
			case 15:
				{
				_localctx = new StructAssignmentContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(310);
				match(ID);
				setState(311);
				match(ID);
				setState(312);
				match(T__1);
				setState(313);
				match(T__4);
				setState(314);
				structArgs();
				setState(315);
				match(T__5);
				setState(317);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,28,_ctx) ) {
				case 1:
					{
					setState(316);
					match(T__7);
					}
					break;
				}
				}
				break;
			case 16:
				{
				_localctx = new LenContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(319);
				match(T__28);
				setState(320);
				match(T__10);
				setState(321);
				match(ID);
				setState(322);
				match(T__11);
				}
				break;
			case 17:
				{
				_localctx = new LenMatrixContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(323);
				match(T__28);
				setState(324);
				match(T__10);
				setState(325);
				match(ID);
				setState(326);
				match(T__25);
				setState(327);
				expr(0);
				setState(328);
				match(T__26);
				setState(329);
				match(T__11);
				}
				break;
			case 18:
				{
				_localctx = new MatrixAppendContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(331);
				match(T__29);
				setState(332);
				match(T__10);
				setState(333);
				match(ID);
				setState(334);
				match(T__8);
				setState(335);
				match(ID);
				setState(336);
				match(T__11);
				}
				break;
			case 19:
				{
				_localctx = new AppendContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(337);
				match(T__29);
				setState(338);
				match(T__10);
				setState(339);
				match(ID);
				setState(340);
				match(T__8);
				setState(341);
				expr(0);
				setState(342);
				match(T__11);
				}
				break;
			case 20:
				{
				_localctx = new SliceIndexContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(344);
				match(T__30);
				setState(345);
				match(T__10);
				setState(346);
				match(ID);
				setState(347);
				match(T__8);
				setState(348);
				expr(0);
				setState(349);
				match(T__11);
				}
				break;
			case 21:
				{
				_localctx = new StringJoinContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(351);
				match(T__31);
				setState(352);
				match(T__10);
				setState(353);
				match(ID);
				setState(354);
				match(T__8);
				setState(355);
				expr(0);
				setState(356);
				match(T__11);
				}
				break;
			case 22:
				{
				_localctx = new AtoiStmtContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(358);
				match(T__32);
				setState(359);
				match(T__10);
				setState(360);
				expr(0);
				setState(361);
				match(T__11);
				}
				break;
			case 23:
				{
				_localctx = new ParseFloatStmtContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(363);
				match(T__33);
				setState(364);
				match(T__10);
				setState(365);
				expr(0);
				setState(366);
				match(T__11);
				}
				break;
			case 24:
				{
				_localctx = new TypeOfStmtContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(368);
				match(T__34);
				setState(369);
				match(T__10);
				setState(370);
				expr(0);
				setState(371);
				match(T__11);
				}
				break;
			case 25:
				{
				_localctx = new NegateContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(373);
				((NegateContext)_localctx).op = _input.LT(1);
				_la = _input.LA(1);
				if ( !(_la==T__35 || _la==T__36) ) {
					((NegateContext)_localctx).op = (Token)_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(374);
				expr(10);
				}
				break;
			case 26:
				{
				_localctx = new IncDecContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(375);
				match(ID);
				setState(376);
				((IncDecContext)_localctx).op = _input.LT(1);
				_la = _input.LA(1);
				if ( !(_la==T__37 || _la==T__38) ) {
					((IncDecContext)_localctx).op = (Token)_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				}
				break;
			case 27:
				{
				_localctx = new ImplicitAddSubContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(377);
				match(ID);
				setState(378);
				((ImplicitAddSubContext)_localctx).op = _input.LT(1);
				_la = _input.LA(1);
				if ( !(_la==T__51 || _la==T__52) ) {
					((ImplicitAddSubContext)_localctx).op = (Token)_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(379);
				expr(2);
				}
				break;
			}
			_ctx.stop = _input.LT(-1);
			setState(420);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,34,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(418);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,33,_ctx) ) {
					case 1:
						{
						_localctx = new MDmodContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(382);
						if (!(precpred(_ctx, 8))) throw new FailedPredicateException(this, "precpred(_ctx, 8)");
						setState(383);
						((MDmodContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & 7696581394432L) != 0)) ) {
							((MDmodContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(384);
						expr(9);
						}
						break;
					case 2:
						{
						_localctx = new AddSubContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(385);
						if (!(precpred(_ctx, 7))) throw new FailedPredicateException(this, "precpred(_ctx, 7)");
						setState(386);
						((AddSubContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__35 || _la==T__42) ) {
							((AddSubContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(387);
						expr(8);
						}
						break;
					case 3:
						{
						_localctx = new RelationalContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(388);
						if (!(precpred(_ctx, 6))) throw new FailedPredicateException(this, "precpred(_ctx, 6)");
						setState(389);
						((RelationalContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & 263882790666240L) != 0)) ) {
							((RelationalContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(390);
						expr(7);
						}
						break;
					case 4:
						{
						_localctx = new EqualityContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(391);
						if (!(precpred(_ctx, 5))) throw new FailedPredicateException(this, "precpred(_ctx, 5)");
						setState(392);
						((EqualityContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__47 || _la==T__48) ) {
							((EqualityContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(393);
						expr(6);
						}
						break;
					case 5:
						{
						_localctx = new LogicalAndContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(394);
						if (!(precpred(_ctx, 4))) throw new FailedPredicateException(this, "precpred(_ctx, 4)");
						setState(395);
						match(T__49);
						setState(396);
						expr(5);
						}
						break;
					case 6:
						{
						_localctx = new LogicalOrContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(397);
						if (!(precpred(_ctx, 3))) throw new FailedPredicateException(this, "precpred(_ctx, 3)");
						setState(398);
						match(T__50);
						setState(399);
						expr(4);
						}
						break;
					case 7:
						{
						_localctx = new CallerContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(400);
						if (!(precpred(_ctx, 28))) throw new FailedPredicateException(this, "precpred(_ctx, 28)");
						setState(402); 
						_errHandler.sync(this);
						_alt = 1;
						do {
							switch (_alt) {
							case 1:
								{
								{
								setState(401);
								call();
								}
								}
								break;
							default:
								throw new NoViableAltException(this);
							}
							setState(404); 
							_errHandler.sync(this);
							_alt = getInterpreter().adaptivePredict(_input,30,_ctx);
						} while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER );
						}
						break;
					case 8:
						{
						_localctx = new StructAccessInfoContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(406);
						if (!(precpred(_ctx, 23))) throw new FailedPredicateException(this, "precpred(_ctx, 23)");
						setState(407);
						match(T__27);
						setState(408);
						match(ID);
						setState(410);
						_errHandler.sync(this);
						switch ( getInterpreter().adaptivePredict(_input,31,_ctx) ) {
						case 1:
							{
							setState(409);
							match(T__7);
							}
							break;
						}
						}
						break;
					case 9:
						{
						_localctx = new AssignmentContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(412);
						if (!(precpred(_ctx, 1))) throw new FailedPredicateException(this, "precpred(_ctx, 1)");
						setState(413);
						match(T__1);
						setState(414);
						expr(0);
						setState(416);
						_errHandler.sync(this);
						switch ( getInterpreter().adaptivePredict(_input,32,_ctx) ) {
						case 1:
							{
							setState(415);
							match(T__7);
							}
							break;
						}
						}
						break;
					}
					} 
				}
				setState(422);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,34,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class CallContext extends ParserRuleContext {
		public ArgsContext args() {
			return getRuleContext(ArgsContext.class,0);
		}
		public CallContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_call; }
	}

	public final CallContext call() throws RecognitionException {
		CallContext _localctx = new CallContext(_ctx, getState());
		enterRule(_localctx, 30, RULE_call);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(423);
			match(T__10);
			setState(425);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & 2287828885045250080L) != 0)) {
				{
				setState(424);
				args();
				}
			}

			setState(427);
			match(T__11);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ArgsContext extends ParserRuleContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public ArgsContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_args; }
	}

	public final ArgsContext args() throws RecognitionException {
		ArgsContext _localctx = new ArgsContext(_ctx, getState());
		enterRule(_localctx, 32, RULE_args);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(429);
			expr(0);
			setState(434);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__8) {
				{
				{
				setState(430);
				match(T__8);
				setState(431);
				expr(0);
				}
				}
				setState(436);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class StructArgsContext extends ParserRuleContext {
		public List<TerminalNode> ID() { return getTokens(LanguageParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(LanguageParser.ID, i);
		}
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public StructArgsContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_structArgs; }
	}

	public final StructArgsContext structArgs() throws RecognitionException {
		StructArgsContext _localctx = new StructArgsContext(_ctx, getState());
		enterRule(_localctx, 34, RULE_structArgs);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(437);
			match(ID);
			setState(438);
			match(T__22);
			setState(439);
			expr(0);
			setState(446);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__8) {
				{
				{
				setState(440);
				match(T__8);
				setState(441);
				match(ID);
				setState(442);
				match(T__22);
				setState(443);
				expr(0);
				}
				}
				setState(448);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public boolean sempred(RuleContext _localctx, int ruleIndex, int predIndex) {
		switch (ruleIndex) {
		case 14:
			return expr_sempred((ExprContext)_localctx, predIndex);
		}
		return true;
	}
	private boolean expr_sempred(ExprContext _localctx, int predIndex) {
		switch (predIndex) {
		case 0:
			return precpred(_ctx, 8);
		case 1:
			return precpred(_ctx, 7);
		case 2:
			return precpred(_ctx, 6);
		case 3:
			return precpred(_ctx, 5);
		case 4:
			return precpred(_ctx, 4);
		case 5:
			return precpred(_ctx, 3);
		case 6:
			return precpred(_ctx, 28);
		case 7:
			return precpred(_ctx, 23);
		case 8:
			return precpred(_ctx, 1);
		}
		return true;
	}

	public static final String _serializedATN =
		"\u0004\u0001?\u01c2\u0002\u0000\u0007\u0000\u0002\u0001\u0007\u0001\u0002"+
		"\u0002\u0007\u0002\u0002\u0003\u0007\u0003\u0002\u0004\u0007\u0004\u0002"+
		"\u0005\u0007\u0005\u0002\u0006\u0007\u0006\u0002\u0007\u0007\u0007\u0002"+
		"\b\u0007\b\u0002\t\u0007\t\u0002\n\u0007\n\u0002\u000b\u0007\u000b\u0002"+
		"\f\u0007\f\u0002\r\u0007\r\u0002\u000e\u0007\u000e\u0002\u000f\u0007\u000f"+
		"\u0002\u0010\u0007\u0010\u0002\u0011\u0007\u0011\u0001\u0000\u0005\u0000"+
		"&\b\u0000\n\u0000\f\u0000)\t\u0000\u0001\u0001\u0001\u0001\u0001\u0001"+
		"\u0001\u0001\u0003\u0001/\b\u0001\u0001\u0002\u0001\u0002\u0001\u0002"+
		"\u0001\u0002\u0001\u0002\u0001\u0002\u0001\u0002\u0001\u0002\u0001\u0002"+
		"\u0001\u0002\u0001\u0002\u0001\u0002\u0001\u0002\u0001\u0002\u0001\u0002"+
		"\u0001\u0002\u0001\u0002\u0001\u0002\u0001\u0002\u0001\u0002\u0001\u0002"+
		"\u0001\u0002\u0001\u0002\u0001\u0002\u0001\u0002\u0001\u0002\u0001\u0002"+
		"\u0001\u0002\u0001\u0002\u0001\u0002\u0001\u0002\u0001\u0002\u0001\u0002"+
		"\u0001\u0002\u0001\u0002\u0001\u0002\u0001\u0002\u0003\u0002V\b\u0002"+
		"\u0003\u0002X\b\u0002\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0003"+
		"\u0003\u0003^\b\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0003"+
		"\u0003\u0003d\b\u0003\u0005\u0003f\b\u0003\n\u0003\f\u0003i\t\u0003\u0001"+
		"\u0004\u0001\u0004\u0001\u0004\u0001\u0004\u0003\u0004o\b\u0004\u0001"+
		"\u0004\u0001\u0004\u0003\u0004s\b\u0004\u0001\u0004\u0001\u0004\u0005"+
		"\u0004w\b\u0004\n\u0004\f\u0004z\t\u0004\u0001\u0004\u0001\u0004\u0001"+
		"\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0004\u0005\u0082\b\u0005\u000b"+
		"\u0005\f\u0005\u0083\u0001\u0005\u0001\u0005\u0001\u0006\u0001\u0006\u0001"+
		"\u0006\u0003\u0006\u008b\b\u0006\u0001\u0007\u0001\u0007\u0001\u0007\u0005"+
		"\u0007\u0090\b\u0007\n\u0007\f\u0007\u0093\t\u0007\u0001\b\u0001\b\u0001"+
		"\b\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0005\t\u009d\b\t\n\t\f\t\u00a0"+
		"\t\t\u0003\t\u00a2\b\t\u0001\t\u0001\t\u0001\t\u0005\t\u00a7\b\t\n\t\f"+
		"\t\u00aa\t\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0003\t\u00b2"+
		"\b\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001"+
		"\t\u0003\t\u00bd\b\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0005"+
		"\t\u00c5\b\t\n\t\f\t\u00c8\t\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t"+
		"\u0001\t\u0003\t\u00d0\b\t\u0003\t\u00d2\b\t\u0001\n\u0001\n\u0001\n\u0001"+
		"\n\u0005\n\u00d8\b\n\n\n\f\n\u00db\t\n\u0001\n\u0001\n\u0001\n\u0005\n"+
		"\u00e0\b\n\n\n\f\n\u00e3\t\n\u0003\n\u00e5\b\n\u0001\u000b\u0001\u000b"+
		"\u0001\u000b\u0001\u000b\u0001\u000b\u0001\u000b\u0001\u000b\u0001\f\u0001"+
		"\f\u0003\f\u00f0\b\f\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0003\r\u00f7"+
		"\b\r\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001"+
		"\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001"+
		"\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001"+
		"\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001"+
		"\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001"+
		"\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001"+
		"\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001"+
		"\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001"+
		"\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0003\u000e\u012c\b\u000e\u0001"+
		"\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001"+
		"\u000e\u0003\u000e\u0135\b\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001"+
		"\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0003\u000e\u013e\b\u000e\u0001"+
		"\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001"+
		"\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001"+
		"\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001"+
		"\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001"+
		"\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001"+
		"\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001"+
		"\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001"+
		"\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001"+
		"\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001"+
		"\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001"+
		"\u000e\u0003\u000e\u017d\b\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001"+
		"\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001"+
		"\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001"+
		"\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0004\u000e\u0193"+
		"\b\u000e\u000b\u000e\f\u000e\u0194\u0001\u000e\u0001\u000e\u0001\u000e"+
		"\u0001\u000e\u0003\u000e\u019b\b\u000e\u0001\u000e\u0001\u000e\u0001\u000e"+
		"\u0001\u000e\u0003\u000e\u01a1\b\u000e\u0005\u000e\u01a3\b\u000e\n\u000e"+
		"\f\u000e\u01a6\t\u000e\u0001\u000f\u0001\u000f\u0003\u000f\u01aa\b\u000f"+
		"\u0001\u000f\u0001\u000f\u0001\u0010\u0001\u0010\u0001\u0010\u0005\u0010"+
		"\u01b1\b\u0010\n\u0010\f\u0010\u01b4\t\u0010\u0001\u0011\u0001\u0011\u0001"+
		"\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0005\u0011\u01bd"+
		"\b\u0011\n\u0011\f\u0011\u01c0\t\u0011\u0001\u0011\u0000\u0001\u001c\u0012"+
		"\u0000\u0002\u0004\u0006\b\n\f\u000e\u0010\u0012\u0014\u0016\u0018\u001a"+
		"\u001c\u001e \"\u0000\b\u0002\u000066<<\u0001\u0000$%\u0001\u0000&\'\u0001"+
		"\u000045\u0001\u0000(*\u0002\u0000$$++\u0001\u0000,/\u0001\u000001\u0204"+
		"\u0000\'\u0001\u0000\u0000\u0000\u0002.\u0001\u0000\u0000\u0000\u0004"+
		"W\u0001\u0000\u0000\u0000\u0006Y\u0001\u0000\u0000\u0000\bj\u0001\u0000"+
		"\u0000\u0000\n}\u0001\u0000\u0000\u0000\f\u0087\u0001\u0000\u0000\u0000"+
		"\u000e\u008c\u0001\u0000\u0000\u0000\u0010\u0094\u0001\u0000\u0000\u0000"+
		"\u0012\u00d1\u0001\u0000\u0000\u0000\u0014\u00e4\u0001\u0000\u0000\u0000"+
		"\u0016\u00e6\u0001\u0000\u0000\u0000\u0018\u00ef\u0001\u0000\u0000\u0000"+
		"\u001a\u00f6\u0001\u0000\u0000\u0000\u001c\u017c\u0001\u0000\u0000\u0000"+
		"\u001e\u01a7\u0001\u0000\u0000\u0000 \u01ad\u0001\u0000\u0000\u0000\""+
		"\u01b5\u0001\u0000\u0000\u0000$&\u0003\u0002\u0001\u0000%$\u0001\u0000"+
		"\u0000\u0000&)\u0001\u0000\u0000\u0000\'%\u0001\u0000\u0000\u0000\'(\u0001"+
		"\u0000\u0000\u0000(\u0001\u0001\u0000\u0000\u0000)\'\u0001\u0000\u0000"+
		"\u0000*/\u0003\u0004\u0002\u0000+/\u0003\b\u0004\u0000,/\u0003\n\u0005"+
		"\u0000-/\u0003\u0012\t\u0000.*\u0001\u0000\u0000\u0000.+\u0001\u0000\u0000"+
		"\u0000.,\u0001\u0000\u0000\u0000.-\u0001\u0000\u0000\u0000/\u0003\u0001"+
		"\u0000\u0000\u000001\u0005\u0001\u0000\u000012\u0005<\u0000\u000023\u0005"+
		"6\u0000\u000034\u0005\u0002\u0000\u00004X\u0003\u001c\u000e\u000056\u0005"+
		"\u0001\u0000\u000067\u0005<\u0000\u00007X\u00056\u0000\u000089\u0005<"+
		"\u0000\u00009:\u0005\u0003\u0000\u0000:X\u0003\u001c\u000e\u0000;<\u0005"+
		"<\u0000\u0000<=\u0005\u0003\u0000\u0000=>\u0005\u0004\u0000\u0000>?\u0005"+
		"6\u0000\u0000?@\u0005\u0005\u0000\u0000@A\u0003 \u0010\u0000AB\u0005\u0006"+
		"\u0000\u0000BX\u0001\u0000\u0000\u0000CD\u0005<\u0000\u0000DE\u0005\u0004"+
		"\u0000\u0000EX\u00056\u0000\u0000FG\u0005<\u0000\u0000GH\u0005\u0003\u0000"+
		"\u0000HI\u0005\u0007\u0000\u0000IJ\u00056\u0000\u0000JK\u0005\u0005\u0000"+
		"\u0000KL\u0003\u0006\u0003\u0000LM\u0005\u0006\u0000\u0000MX\u0001\u0000"+
		"\u0000\u0000NO\u0005<\u0000\u0000OP\u0005<\u0000\u0000PQ\u0005\u0002\u0000"+
		"\u0000QR\u0005\u0005\u0000\u0000RS\u0003\"\u0011\u0000SU\u0005\u0006\u0000"+
		"\u0000TV\u0005\b\u0000\u0000UT\u0001\u0000\u0000\u0000UV\u0001\u0000\u0000"+
		"\u0000VX\u0001\u0000\u0000\u0000W0\u0001\u0000\u0000\u0000W5\u0001\u0000"+
		"\u0000\u0000W8\u0001\u0000\u0000\u0000W;\u0001\u0000\u0000\u0000WC\u0001"+
		"\u0000\u0000\u0000WF\u0001\u0000\u0000\u0000WN\u0001\u0000\u0000\u0000"+
		"X\u0005\u0001\u0000\u0000\u0000YZ\u0005\u0005\u0000\u0000Z[\u0003 \u0010"+
		"\u0000[]\u0005\u0006\u0000\u0000\\^\u0005\t\u0000\u0000]\\\u0001\u0000"+
		"\u0000\u0000]^\u0001\u0000\u0000\u0000^g\u0001\u0000\u0000\u0000_`\u0005"+
		"\u0005\u0000\u0000`a\u0003 \u0010\u0000ac\u0005\u0006\u0000\u0000bd\u0005"+
		"\t\u0000\u0000cb\u0001\u0000\u0000\u0000cd\u0001\u0000\u0000\u0000df\u0001"+
		"\u0000\u0000\u0000e_\u0001\u0000\u0000\u0000fi\u0001\u0000\u0000\u0000"+
		"ge\u0001\u0000\u0000\u0000gh\u0001\u0000\u0000\u0000h\u0007\u0001\u0000"+
		"\u0000\u0000ig\u0001\u0000\u0000\u0000jk\u0005\n\u0000\u0000kl\u0005<"+
		"\u0000\u0000ln\u0005\u000b\u0000\u0000mo\u0003\u000e\u0007\u0000nm\u0001"+
		"\u0000\u0000\u0000no\u0001\u0000\u0000\u0000op\u0001\u0000\u0000\u0000"+
		"pr\u0005\f\u0000\u0000qs\u00056\u0000\u0000rq\u0001\u0000\u0000\u0000"+
		"rs\u0001\u0000\u0000\u0000st\u0001\u0000\u0000\u0000tx\u0005\u0005\u0000"+
		"\u0000uw\u0003\u0002\u0001\u0000vu\u0001\u0000\u0000\u0000wz\u0001\u0000"+
		"\u0000\u0000xv\u0001\u0000\u0000\u0000xy\u0001\u0000\u0000\u0000y{\u0001"+
		"\u0000\u0000\u0000zx\u0001\u0000\u0000\u0000{|\u0005\u0006\u0000\u0000"+
		"|\t\u0001\u0000\u0000\u0000}~\u0005\r\u0000\u0000~\u007f\u0005<\u0000"+
		"\u0000\u007f\u0081\u0005\u0005\u0000\u0000\u0080\u0082\u0003\f\u0006\u0000"+
		"\u0081\u0080\u0001\u0000\u0000\u0000\u0082\u0083\u0001\u0000\u0000\u0000"+
		"\u0083\u0081\u0001\u0000\u0000\u0000\u0083\u0084\u0001\u0000\u0000\u0000"+
		"\u0084\u0085\u0001\u0000\u0000\u0000\u0085\u0086\u0005\u0006\u0000\u0000"+
		"\u0086\u000b\u0001\u0000\u0000\u0000\u0087\u0088\u0007\u0000\u0000\u0000"+
		"\u0088\u008a\u0005<\u0000\u0000\u0089\u008b\u0005\b\u0000\u0000\u008a"+
		"\u0089\u0001\u0000\u0000\u0000\u008a\u008b\u0001\u0000\u0000\u0000\u008b"+
		"\r\u0001\u0000\u0000\u0000\u008c\u0091\u0003\u0010\b\u0000\u008d\u008e"+
		"\u0005\t\u0000\u0000\u008e\u0090\u0003\u0010\b\u0000\u008f\u008d\u0001"+
		"\u0000\u0000\u0000\u0090\u0093\u0001\u0000\u0000\u0000\u0091\u008f\u0001"+
		"\u0000\u0000\u0000\u0091\u0092\u0001\u0000\u0000\u0000\u0092\u000f\u0001"+
		"\u0000\u0000\u0000\u0093\u0091\u0001\u0000\u0000\u0000\u0094\u0095\u0005"+
		"<\u0000\u0000\u0095\u0096\u00056\u0000\u0000\u0096\u0011\u0001\u0000\u0000"+
		"\u0000\u0097\u00d2\u0003\u001c\u000e\u0000\u0098\u00a1\u0005\u000e\u0000"+
		"\u0000\u0099\u009e\u0003\u001c\u000e\u0000\u009a\u009b\u0005\t\u0000\u0000"+
		"\u009b\u009d\u0003\u001c\u000e\u0000\u009c\u009a\u0001\u0000\u0000\u0000"+
		"\u009d\u00a0\u0001\u0000\u0000\u0000\u009e\u009c\u0001\u0000\u0000\u0000"+
		"\u009e\u009f\u0001\u0000\u0000\u0000\u009f\u00a2\u0001\u0000\u0000\u0000"+
		"\u00a0\u009e\u0001\u0000\u0000\u0000\u00a1\u0099\u0001\u0000\u0000\u0000"+
		"\u00a1\u00a2\u0001\u0000\u0000\u0000\u00a2\u00a3\u0001\u0000\u0000\u0000"+
		"\u00a3\u00d2\u0005\f\u0000\u0000\u00a4\u00a8\u0005\u0005\u0000\u0000\u00a5"+
		"\u00a7\u0003\u0002\u0001\u0000\u00a6\u00a5\u0001\u0000\u0000\u0000\u00a7"+
		"\u00aa\u0001\u0000\u0000\u0000\u00a8\u00a6\u0001\u0000\u0000\u0000\u00a8"+
		"\u00a9\u0001\u0000\u0000\u0000\u00a9\u00ab\u0001\u0000\u0000\u0000\u00aa"+
		"\u00a8\u0001\u0000\u0000\u0000\u00ab\u00d2\u0005\u0006\u0000\u0000\u00ac"+
		"\u00ad\u0005\u000f\u0000\u0000\u00ad\u00ae\u0003\u001a\r\u0000\u00ae\u00b1"+
		"\u0003\u0012\t\u0000\u00af\u00b0\u0005\u0010\u0000\u0000\u00b0\u00b2\u0003"+
		"\u0012\t\u0000\u00b1\u00af\u0001\u0000\u0000\u0000\u00b1\u00b2\u0001\u0000"+
		"\u0000\u0000\u00b2\u00d2\u0001\u0000\u0000\u0000\u00b3\u00bc\u0005\u0011"+
		"\u0000\u0000\u00b4\u00b5\u0003\u0018\f\u0000\u00b5\u00b6\u0005\b\u0000"+
		"\u0000\u00b6\u00b7\u0003\u001c\u000e\u0000\u00b7\u00b8\u0005\b\u0000\u0000"+
		"\u00b8\u00b9\u0003\u001c\u000e\u0000\u00b9\u00bd\u0001\u0000\u0000\u0000"+
		"\u00ba\u00bd\u0003\u001a\r\u0000\u00bb\u00bd\u0003\u0016\u000b\u0000\u00bc"+
		"\u00b4\u0001\u0000\u0000\u0000\u00bc\u00ba\u0001\u0000\u0000\u0000\u00bc"+
		"\u00bb\u0001\u0000\u0000\u0000\u00bd\u00be\u0001\u0000\u0000\u0000\u00be"+
		"\u00bf\u0003\u0012\t\u0000\u00bf\u00d2\u0001\u0000\u0000\u0000\u00c0\u00c1"+
		"\u0005\u0012\u0000\u0000\u00c1\u00c2\u0003\u001c\u000e\u0000\u00c2\u00c6"+
		"\u0005\u0005\u0000\u0000\u00c3\u00c5\u0003\u0014\n\u0000\u00c4\u00c3\u0001"+
		"\u0000\u0000\u0000\u00c5\u00c8\u0001\u0000\u0000\u0000\u00c6\u00c4\u0001"+
		"\u0000\u0000\u0000\u00c6\u00c7\u0001\u0000\u0000\u0000\u00c7\u00c9\u0001"+
		"\u0000\u0000\u0000\u00c8\u00c6\u0001\u0000\u0000\u0000\u00c9\u00ca\u0005"+
		"\u0006\u0000\u0000\u00ca\u00d2\u0001\u0000\u0000\u0000\u00cb\u00d2\u0005"+
		"\u0013\u0000\u0000\u00cc\u00d2\u0005\u0014\u0000\u0000\u00cd\u00cf\u0005"+
		"\u0015\u0000\u0000\u00ce\u00d0\u0003\u001c\u000e\u0000\u00cf\u00ce\u0001"+
		"\u0000\u0000\u0000\u00cf\u00d0\u0001\u0000\u0000\u0000\u00d0\u00d2\u0001"+
		"\u0000\u0000\u0000\u00d1\u0097\u0001\u0000\u0000\u0000\u00d1\u0098\u0001"+
		"\u0000\u0000\u0000\u00d1\u00a4\u0001\u0000\u0000\u0000\u00d1\u00ac\u0001"+
		"\u0000\u0000\u0000\u00d1\u00b3\u0001\u0000\u0000\u0000\u00d1\u00c0\u0001"+
		"\u0000\u0000\u0000\u00d1\u00cb\u0001\u0000\u0000\u0000\u00d1\u00cc\u0001"+
		"\u0000\u0000\u0000\u00d1\u00cd\u0001\u0000\u0000\u0000\u00d2\u0013\u0001"+
		"\u0000\u0000\u0000\u00d3\u00d4\u0005\u0016\u0000\u0000\u00d4\u00d5\u0003"+
		"\u001c\u000e\u0000\u00d5\u00d9\u0005\u0017\u0000\u0000\u00d6\u00d8\u0003"+
		"\u0012\t\u0000\u00d7\u00d6\u0001\u0000\u0000\u0000\u00d8\u00db\u0001\u0000"+
		"\u0000\u0000\u00d9\u00d7\u0001\u0000\u0000\u0000\u00d9\u00da\u0001\u0000"+
		"\u0000\u0000\u00da\u00e5\u0001\u0000\u0000\u0000\u00db\u00d9\u0001\u0000"+
		"\u0000\u0000\u00dc\u00dd\u0005\u0018\u0000\u0000\u00dd\u00e1\u0005\u0017"+
		"\u0000\u0000\u00de\u00e0\u0003\u0012\t\u0000\u00df\u00de\u0001\u0000\u0000"+
		"\u0000\u00e0\u00e3\u0001\u0000\u0000\u0000\u00e1\u00df\u0001\u0000\u0000"+
		"\u0000\u00e1\u00e2\u0001\u0000\u0000\u0000\u00e2\u00e5\u0001\u0000\u0000"+
		"\u0000\u00e3\u00e1\u0001\u0000\u0000\u0000\u00e4\u00d3\u0001\u0000\u0000"+
		"\u0000\u00e4\u00dc\u0001\u0000\u0000\u0000\u00e5\u0015\u0001\u0000\u0000"+
		"\u0000\u00e6\u00e7\u0005<\u0000\u0000\u00e7\u00e8\u0005\t\u0000\u0000"+
		"\u00e8\u00e9\u0005<\u0000\u0000\u00e9\u00ea\u0005\u0003\u0000\u0000\u00ea"+
		"\u00eb\u0005\u0019\u0000\u0000\u00eb\u00ec\u0003\u001c\u000e\u0000\u00ec"+
		"\u0017\u0001\u0000\u0000\u0000\u00ed\u00f0\u0003\u0004\u0002\u0000\u00ee"+
		"\u00f0\u0003\u001c\u000e\u0000\u00ef\u00ed\u0001\u0000\u0000\u0000\u00ef"+
		"\u00ee\u0001\u0000\u0000\u0000\u00f0\u0019\u0001\u0000\u0000\u0000\u00f1"+
		"\u00f2\u0005\u000b\u0000\u0000\u00f2\u00f3\u0003\u001c\u000e\u0000\u00f3"+
		"\u00f4\u0005\f\u0000\u0000\u00f4\u00f7\u0001\u0000\u0000\u0000\u00f5\u00f7"+
		"\u0003\u001c\u000e\u0000\u00f6\u00f1\u0001\u0000\u0000\u0000\u00f6\u00f5"+
		"\u0001\u0000\u0000\u0000\u00f7\u001b\u0001\u0000\u0000\u0000\u00f8\u00f9"+
		"\u0006\u000e\uffff\uffff\u0000\u00f9\u00fa\u0005\u000b\u0000\u0000\u00fa"+
		"\u00fb\u0003\u001c\u000e\u0000\u00fb\u00fc\u0005\f\u0000\u0000\u00fc\u017d"+
		"\u0001\u0000\u0000\u0000\u00fd\u017d\u00058\u0000\u0000\u00fe\u017d\u0005"+
		"9\u0000\u0000\u00ff\u017d\u00057\u0000\u0000\u0100\u017d\u0005;\u0000"+
		"\u0000\u0101\u017d\u0005:\u0000\u0000\u0102\u017d\u0005<\u0000\u0000\u0103"+
		"\u0104\u0005\u0005\u0000\u0000\u0104\u0105\u0003\"\u0011\u0000\u0105\u0106"+
		"\u0005\u0006\u0000\u0000\u0106\u017d\u0001\u0000\u0000\u0000\u0107\u0108"+
		"\u0005<\u0000\u0000\u0108\u0109\u0005\u001a\u0000\u0000\u0109\u010a\u0003"+
		"\u001c\u000e\u0000\u010a\u010b\u0005\u001b\u0000\u0000\u010b\u010c\u0005"+
		"\u001a\u0000\u0000\u010c\u010d\u0003\u001c\u000e\u0000\u010d\u010e\u0005"+
		"\u001b\u0000\u0000\u010e\u010f\u0005\u0002\u0000\u0000\u010f\u0110\u0003"+
		"\u001c\u000e\u001b\u0110\u017d\u0001\u0000\u0000\u0000\u0111\u0112\u0005"+
		"<\u0000\u0000\u0112\u0113\u0005\u001a\u0000\u0000\u0113\u0114\u0003\u001c"+
		"\u000e\u0000\u0114\u0115\u0005\u001b\u0000\u0000\u0115\u0116\u0005\u001a"+
		"\u0000\u0000\u0116\u0117\u0003\u001c\u000e\u0000\u0117\u0118\u0005\u001b"+
		"\u0000\u0000\u0118\u017d\u0001\u0000\u0000\u0000\u0119\u011a\u0005<\u0000"+
		"\u0000\u011a\u011b\u0005\u001a\u0000\u0000\u011b\u011c\u0003\u001c\u000e"+
		"\u0000\u011c\u011d\u0005\u001b\u0000\u0000\u011d\u011e\u0005\u0002\u0000"+
		"\u0000\u011e\u011f\u0003\u001c\u000e\u0019\u011f\u017d\u0001\u0000\u0000"+
		"\u0000\u0120\u0121\u0005<\u0000\u0000\u0121\u0122\u0005\u001a\u0000\u0000"+
		"\u0122\u0123\u0003\u001c\u000e\u0000\u0123\u0124\u0005\u001b\u0000\u0000"+
		"\u0124\u017d\u0001\u0000\u0000\u0000\u0125\u0126\u0005<\u0000\u0000\u0126"+
		"\u0127\u0005\u001c\u0000\u0000\u0127\u0128\u0005<\u0000\u0000\u0128\u0129"+
		"\u0005\u0002\u0000\u0000\u0129\u012b\u0003\u001c\u000e\u0000\u012a\u012c"+
		"\u0005\b\u0000\u0000\u012b\u012a\u0001\u0000\u0000\u0000\u012b\u012c\u0001"+
		"\u0000\u0000\u0000\u012c\u017d\u0001\u0000\u0000\u0000\u012d\u012e\u0005"+
		"6\u0000\u0000\u012e\u012f\u0005<\u0000\u0000\u012f\u0130\u0005\u0002\u0000"+
		"\u0000\u0130\u0131\u0005<\u0000\u0000\u0131\u0132\u0005\u001c\u0000\u0000"+
		"\u0132\u0134\u0005<\u0000\u0000\u0133\u0135\u0005\b\u0000\u0000\u0134"+
		"\u0133\u0001\u0000\u0000\u0000\u0134\u0135\u0001\u0000\u0000\u0000\u0135"+
		"\u017d\u0001\u0000\u0000\u0000\u0136\u0137\u0005<\u0000\u0000\u0137\u0138"+
		"\u0005<\u0000\u0000\u0138\u0139\u0005\u0002\u0000\u0000\u0139\u013a\u0005"+
		"\u0005\u0000\u0000\u013a\u013b\u0003\"\u0011\u0000\u013b\u013d\u0005\u0006"+
		"\u0000\u0000\u013c\u013e\u0005\b\u0000\u0000\u013d\u013c\u0001\u0000\u0000"+
		"\u0000\u013d\u013e\u0001\u0000\u0000\u0000\u013e\u017d\u0001\u0000\u0000"+
		"\u0000\u013f\u0140\u0005\u001d\u0000\u0000\u0140\u0141\u0005\u000b\u0000"+
		"\u0000\u0141\u0142\u0005<\u0000\u0000\u0142\u017d\u0005\f\u0000\u0000"+
		"\u0143\u0144\u0005\u001d\u0000\u0000\u0144\u0145\u0005\u000b\u0000\u0000"+
		"\u0145\u0146\u0005<\u0000\u0000\u0146\u0147\u0005\u001a\u0000\u0000\u0147"+
		"\u0148\u0003\u001c\u000e\u0000\u0148\u0149\u0005\u001b\u0000\u0000\u0149"+
		"\u014a\u0005\f\u0000\u0000\u014a\u017d\u0001\u0000\u0000\u0000\u014b\u014c"+
		"\u0005\u001e\u0000\u0000\u014c\u014d\u0005\u000b\u0000\u0000\u014d\u014e"+
		"\u0005<\u0000\u0000\u014e\u014f\u0005\t\u0000\u0000\u014f\u0150\u0005"+
		"<\u0000\u0000\u0150\u017d\u0005\f\u0000\u0000\u0151\u0152\u0005\u001e"+
		"\u0000\u0000\u0152\u0153\u0005\u000b\u0000\u0000\u0153\u0154\u0005<\u0000"+
		"\u0000\u0154\u0155\u0005\t\u0000\u0000\u0155\u0156\u0003\u001c\u000e\u0000"+
		"\u0156\u0157\u0005\f\u0000\u0000\u0157\u017d\u0001\u0000\u0000\u0000\u0158"+
		"\u0159\u0005\u001f\u0000\u0000\u0159\u015a\u0005\u000b\u0000\u0000\u015a"+
		"\u015b\u0005<\u0000\u0000\u015b\u015c\u0005\t\u0000\u0000\u015c\u015d"+
		"\u0003\u001c\u000e\u0000\u015d\u015e\u0005\f\u0000\u0000\u015e\u017d\u0001"+
		"\u0000\u0000\u0000\u015f\u0160\u0005 \u0000\u0000\u0160\u0161\u0005\u000b"+
		"\u0000\u0000\u0161\u0162\u0005<\u0000\u0000\u0162\u0163\u0005\t\u0000"+
		"\u0000\u0163\u0164\u0003\u001c\u000e\u0000\u0164\u0165\u0005\f\u0000\u0000"+
		"\u0165\u017d\u0001\u0000\u0000\u0000\u0166\u0167\u0005!\u0000\u0000\u0167"+
		"\u0168\u0005\u000b\u0000\u0000\u0168\u0169\u0003\u001c\u000e\u0000\u0169"+
		"\u016a\u0005\f\u0000\u0000\u016a\u017d\u0001\u0000\u0000\u0000\u016b\u016c"+
		"\u0005\"\u0000\u0000\u016c\u016d\u0005\u000b\u0000\u0000\u016d\u016e\u0003"+
		"\u001c\u000e\u0000\u016e\u016f\u0005\f\u0000\u0000\u016f\u017d\u0001\u0000"+
		"\u0000\u0000\u0170\u0171\u0005#\u0000\u0000\u0171\u0172\u0005\u000b\u0000"+
		"\u0000\u0172\u0173\u0003\u001c\u000e\u0000\u0173\u0174\u0005\f\u0000\u0000"+
		"\u0174\u017d\u0001\u0000\u0000\u0000\u0175\u0176\u0007\u0001\u0000\u0000"+
		"\u0176\u017d\u0003\u001c\u000e\n\u0177\u0178\u0005<\u0000\u0000\u0178"+
		"\u017d\u0007\u0002\u0000\u0000\u0179\u017a\u0005<\u0000\u0000\u017a\u017b"+
		"\u0007\u0003\u0000\u0000\u017b\u017d\u0003\u001c\u000e\u0002\u017c\u00f8"+
		"\u0001\u0000\u0000\u0000\u017c\u00fd\u0001\u0000\u0000\u0000\u017c\u00fe"+
		"\u0001\u0000\u0000\u0000\u017c\u00ff\u0001\u0000\u0000\u0000\u017c\u0100"+
		"\u0001\u0000\u0000\u0000\u017c\u0101\u0001\u0000\u0000\u0000\u017c\u0102"+
		"\u0001\u0000\u0000\u0000\u017c\u0103\u0001\u0000\u0000\u0000\u017c\u0107"+
		"\u0001\u0000\u0000\u0000\u017c\u0111\u0001\u0000\u0000\u0000\u017c\u0119"+
		"\u0001\u0000\u0000\u0000\u017c\u0120\u0001\u0000\u0000\u0000\u017c\u0125"+
		"\u0001\u0000\u0000\u0000\u017c\u012d\u0001\u0000\u0000\u0000\u017c\u0136"+
		"\u0001\u0000\u0000\u0000\u017c\u013f\u0001\u0000\u0000\u0000\u017c\u0143"+
		"\u0001\u0000\u0000\u0000\u017c\u014b\u0001\u0000\u0000\u0000\u017c\u0151"+
		"\u0001\u0000\u0000\u0000\u017c\u0158\u0001\u0000\u0000\u0000\u017c\u015f"+
		"\u0001\u0000\u0000\u0000\u017c\u0166\u0001\u0000\u0000\u0000\u017c\u016b"+
		"\u0001\u0000\u0000\u0000\u017c\u0170\u0001\u0000\u0000\u0000\u017c\u0175"+
		"\u0001\u0000\u0000\u0000\u017c\u0177\u0001\u0000\u0000\u0000\u017c\u0179"+
		"\u0001\u0000\u0000\u0000\u017d\u01a4\u0001\u0000\u0000\u0000\u017e\u017f"+
		"\n\b\u0000\u0000\u017f\u0180\u0007\u0004\u0000\u0000\u0180\u01a3\u0003"+
		"\u001c\u000e\t\u0181\u0182\n\u0007\u0000\u0000\u0182\u0183\u0007\u0005"+
		"\u0000\u0000\u0183\u01a3\u0003\u001c\u000e\b\u0184\u0185\n\u0006\u0000"+
		"\u0000\u0185\u0186\u0007\u0006\u0000\u0000\u0186\u01a3\u0003\u001c\u000e"+
		"\u0007\u0187\u0188\n\u0005\u0000\u0000\u0188\u0189\u0007\u0007\u0000\u0000"+
		"\u0189\u01a3\u0003\u001c\u000e\u0006\u018a\u018b\n\u0004\u0000\u0000\u018b"+
		"\u018c\u00052\u0000\u0000\u018c\u01a3\u0003\u001c\u000e\u0005\u018d\u018e"+
		"\n\u0003\u0000\u0000\u018e\u018f\u00053\u0000\u0000\u018f\u01a3\u0003"+
		"\u001c\u000e\u0004\u0190\u0192\n\u001c\u0000\u0000\u0191\u0193\u0003\u001e"+
		"\u000f\u0000\u0192\u0191\u0001\u0000\u0000\u0000\u0193\u0194\u0001\u0000"+
		"\u0000\u0000\u0194\u0192\u0001\u0000\u0000\u0000\u0194\u0195\u0001\u0000"+
		"\u0000\u0000\u0195\u01a3\u0001\u0000\u0000\u0000\u0196\u0197\n\u0017\u0000"+
		"\u0000\u0197\u0198\u0005\u001c\u0000\u0000\u0198\u019a\u0005<\u0000\u0000"+
		"\u0199\u019b\u0005\b\u0000\u0000\u019a\u0199\u0001\u0000\u0000\u0000\u019a"+
		"\u019b\u0001\u0000\u0000\u0000\u019b\u01a3\u0001\u0000\u0000\u0000\u019c"+
		"\u019d\n\u0001\u0000\u0000\u019d\u019e\u0005\u0002\u0000\u0000\u019e\u01a0"+
		"\u0003\u001c\u000e\u0000\u019f\u01a1\u0005\b\u0000\u0000\u01a0\u019f\u0001"+
		"\u0000\u0000\u0000\u01a0\u01a1\u0001\u0000\u0000\u0000\u01a1\u01a3\u0001"+
		"\u0000\u0000\u0000\u01a2\u017e\u0001\u0000\u0000\u0000\u01a2\u0181\u0001"+
		"\u0000\u0000\u0000\u01a2\u0184\u0001\u0000\u0000\u0000\u01a2\u0187\u0001"+
		"\u0000\u0000\u0000\u01a2\u018a\u0001\u0000\u0000\u0000\u01a2\u018d\u0001"+
		"\u0000\u0000\u0000\u01a2\u0190\u0001\u0000\u0000\u0000\u01a2\u0196\u0001"+
		"\u0000\u0000\u0000\u01a2\u019c\u0001\u0000\u0000\u0000\u01a3\u01a6\u0001"+
		"\u0000\u0000\u0000\u01a4\u01a2\u0001\u0000\u0000\u0000\u01a4\u01a5\u0001"+
		"\u0000\u0000\u0000\u01a5\u001d\u0001\u0000\u0000\u0000\u01a6\u01a4\u0001"+
		"\u0000\u0000\u0000\u01a7\u01a9\u0005\u000b\u0000\u0000\u01a8\u01aa\u0003"+
		" \u0010\u0000\u01a9\u01a8\u0001\u0000\u0000\u0000\u01a9\u01aa\u0001\u0000"+
		"\u0000\u0000\u01aa\u01ab\u0001\u0000\u0000\u0000\u01ab\u01ac\u0005\f\u0000"+
		"\u0000\u01ac\u001f\u0001\u0000\u0000\u0000\u01ad\u01b2\u0003\u001c\u000e"+
		"\u0000\u01ae\u01af\u0005\t\u0000\u0000\u01af\u01b1\u0003\u001c\u000e\u0000"+
		"\u01b0\u01ae\u0001\u0000\u0000\u0000\u01b1\u01b4\u0001\u0000\u0000\u0000"+
		"\u01b2\u01b0\u0001\u0000\u0000\u0000\u01b2\u01b3\u0001\u0000\u0000\u0000"+
		"\u01b3!\u0001\u0000\u0000\u0000\u01b4\u01b2\u0001\u0000\u0000\u0000\u01b5"+
		"\u01b6\u0005<\u0000\u0000\u01b6\u01b7\u0005\u0017\u0000\u0000\u01b7\u01be"+
		"\u0003\u001c\u000e\u0000\u01b8\u01b9\u0005\t\u0000\u0000\u01b9\u01ba\u0005"+
		"<\u0000\u0000\u01ba\u01bb\u0005\u0017\u0000\u0000\u01bb\u01bd\u0003\u001c"+
		"\u000e\u0000\u01bc\u01b8\u0001\u0000\u0000\u0000\u01bd\u01c0\u0001\u0000"+
		"\u0000\u0000\u01be\u01bc\u0001\u0000\u0000\u0000\u01be\u01bf\u0001\u0000"+
		"\u0000\u0000\u01bf#\u0001\u0000\u0000\u0000\u01c0\u01be\u0001\u0000\u0000"+
		"\u0000&\'.UW]cgnrx\u0083\u008a\u0091\u009e\u00a1\u00a8\u00b1\u00bc\u00c6"+
		"\u00cf\u00d1\u00d9\u00e1\u00e4\u00ef\u00f6\u012b\u0134\u013d\u017c\u0194"+
		"\u019a\u01a0\u01a2\u01a4\u01a9\u01b2\u01be";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}