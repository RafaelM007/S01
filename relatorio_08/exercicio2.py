from abc import ABC, abstractmethod

class HeroiOverwatch:
    def __init__(self, codinome: str, funcao: str):
        self.codinome = codinome
        self.funcao = funcao

    def usar_suprema(self):
        print(f"{self.codinome} usou uma suprema!")


class HeroiTanque(HeroiOverwatch):

    def usar_suprema(self):
        print(f"{self.codinome} usou uma suprema de tanque!")


class HeroiSuporte(HeroiOverwatch):

    def usar_suprema(self):
        print(f"{self.codinome} usou uma suprema de suporte!")

    def curar_equipe(self):
        print(f"{self.codinome} curou a equipe.")


if __name__ == "__main__":
    print("--- Overwatch --")
    herois: list[HeroiOverwatch] = [
        HeroiOverwatch("Soldado", "Dano"),
        HeroiTanque("Reaper", "Tanque"),
        HeroiSuporte("sigma", "Suporte")
    ]
    for heroi in herois:
        heroi.usar_suprema()

        if isinstance(heroi, HeroiSuporte):
            heroi.curar_equipe()


