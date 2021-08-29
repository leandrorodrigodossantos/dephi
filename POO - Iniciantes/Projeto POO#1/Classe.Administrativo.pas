unit Classe.Administrativo;

interface

uses
  Classe.Pessoa;

type
  TAdministrativo = class(TPessoa)
  private
    FBonus: Currency;
    procedure SetBonus(const Value: Currency);

  public
    property Bonus: Currency read FBonus write SetBonus;
    function calcularSalario: Currency; override;
  end;
implementation

{ TAdministrativo }

function TAdministrativo.calcularSalario: Currency;
begin
  Result := Salario + Bonus;
end;

procedure TAdministrativo.SetBonus(const Value: Currency);
begin
  FBonus := Value;
end;

end.
