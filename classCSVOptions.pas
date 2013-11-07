unit classCSVOptions;

interface

type
  TCSVOptions = class(TObject)
  private
    FSeparator: string;
    FHeaders: boolean;
    FDelimiter: string;
    procedure SetDelimiter(const Value: string);
    procedure SetHeaders(const Value: boolean);
    procedure SetSeparator(const Value: string);
  public
    property Headers : boolean read FHeaders write SetHeaders;
    property Separator : string read FSeparator write SetSeparator;
    property Delimiter : string read FDelimiter write SetDelimiter;
  end;

implementation

{ TCSVOptions }

procedure TCSVOptions.SetDelimiter(const Value: string);
begin
  FDelimiter := Value;
end;

procedure TCSVOptions.SetHeaders(const Value: boolean);
begin
  FHeaders := Value;
end;

procedure TCSVOptions.SetSeparator(const Value: string);
begin
  FSeparator := Value;
end;

end.
