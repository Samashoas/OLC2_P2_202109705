public record MatrixValue: ValueWrapper{
    public string ElementType { get; }
    public List<List<ValueWrapper>> Elements { get; }

    public MatrixValue(string elementType, List<List<ValueWrapper>> elements)
    {
        ElementType = elementType;
        Elements = elements;
    }

    public override string ToString()
    {
        return $"Matrix<{ElementType}>[{Elements.Count}][{(Elements.Count > 0 ? Elements[0].Count : 0)}]";
    }
}