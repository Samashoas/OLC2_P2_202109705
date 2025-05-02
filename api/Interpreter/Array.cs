
public record ArrayValue : ValueWrapper{
    public List<ValueWrapper> Elements { get; set; }
    public string ElementType { get; set; }

    public ArrayValue(string elementType, List<ValueWrapper> elements)
    {
        ElementType = elementType;
        Elements = elements;
    }

    public override string ToString()
    {
        return $"[{string.Join(", ", Elements.Select(e => e.ToString()))}]";
    }
}