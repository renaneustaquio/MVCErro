unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,  FireDAC.Stan.StorageJSON;

type
  TForm1 = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    btnRead: TButton;
    btnConvert: TButton;
    FDMemTable1: TFDMemTable;
    FDStanStorageJSONLink1: TFDStanStorageJSONLink;
    procedure btnReadClick(Sender: TObject);
    procedure btnConvertClick(Sender: TObject);
  private
    procedure convert;
    procedure read;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation


Uses
  System.JSON, MVCFramework.DataSet.Utils;
{$R *.dfm}

procedure TForm1.btnReadClick(Sender: TObject);
begin
  read;
end;

procedure TForm1.btnConvertClick(Sender: TObject);
begin
  convert;
end;

procedure TForm1.convert;
var
  vJSONArray: TJSONArray;
  vSQLObject: TJSONObject;
begin
  vJSONArray := TJSONArray.Create;
  try
    vSQLObject := TJSONObject.Create;
    vSQLObject.AddPair('sql', FDMemTable1.AsJSONArray);
    vJSONArray.Add(vSQLObject);
  finally
    FreeAndNil(vJSONArray);
  end;
end;

procedure TForm1.read;
begin
  FDMemTable1.LoadFromFile(ExtractFileDir(ParamStr(0)) + '\dataset.sfJSON', sfJSON);
end;

end.
