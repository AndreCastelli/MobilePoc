package br.com.realizecfi.orbi.base.util;

public class PersonUtil {
    private String name;
    private int age;
    private String cpf;
    private String rg;
    private String birthDate;
    private String gender;
    private String mother;
    private String father;
    private String email;
    private double salary;

    public double getSalary() {
        return salary;
    }

    private final String masculino = "masculino";

    public PersonUtil() {
        setTheData();
    }

    public String getName() {
        return name;
    }

    public int getAge() {
        return age;
    }

    public String getCpf() {
        return cpf;
    }

    public String getRg() {
        return rg;
    }

    public String getBirthDate() {
        return birthDate;
    }

    public String getGender() {
        return gender;
    }

    public String getMother() {
        return mother;
    }

    public String getFather() {
        return father;
    }

    public String getEmail() {
        return email;
    }

    public void setTheData() {
        String familyName = ' ' + generatesLastName() + ' ' + generatesLastName();

        this.gender = generateGender();
        setName(familyName);
        this.mother = generatesFemaleName() + familyName;
        this.father = generatesMaleName() + familyName;
        this.email = getName().toLowerCase().replaceAll(" ", ".") + '_'
                + MathUtil.getRandomNumber(MathUtil.ONE_HUNDRED_THOUSAND) + "@gmail.com";
        this.age = MathUtil.minAndMaxRandomNumber(MathUtil.EIGHTEEN, MathUtil.SEVENTY);
        this.cpf = new DocumentUtil().getRandomValidCPF(false);
        this.rg = new DocumentUtil().rg(false);
        this.birthDate = new DateTimeUtil().randomBirthday(
                MathUtil.ONE_THOUSAND_NINE_HUNDRED_SIXTY, MathUtil.TWO_THOUSAND);
        this.salary = MathUtil.THREE_THOUSAND;
    }

    public void setName(String familyName) {
        String personName;

        if (getGender().equals(masculino)) {
            personName = generatesMaleName();
        } else {
            personName = generatesFemaleName();
        }

        this.name = personName + familyName;
    }

    public String generateGender() {
        String[] genderArr = {masculino, "feminino"};

        return genderArr[MathUtil.getRandomNumber(genderArr.length)];
    }

    public String generatesMaleName() {
        String[] maleName = {"Miguel", "Arthur", "Heitor", "Bernardo", "Théo", "Davi", "Gabriel", "Pedro", "Samuel",
                "Lorenzo", "Benjamin", "Matheus", "Lucas", "Benício", "Gael", "Joaquim", "Nicolas",
                "Henrique", "Rafael", "Isaac"};

        return maleName[MathUtil.getRandomNumber(maleName.length - MathUtil.ONE)];
    }

    public String generatesFemaleName() {
        String[] femaleName = {"Helena", "Alice", "Laura", "Manuela", "Isabella", "Sophia", "Luisa", "Heloisa",
                "Valentina", "Julia", "Cecilia", "Eloa", "Livia", "Lorena", "Maria Luisa",
                "Giovanna", "Liz", "Antonella", "Maite", "Mariana"};

        return femaleName[MathUtil.getRandomNumber(femaleName.length - MathUtil.ONE)];
    }

    public String generatesLastName() {
        String[] lastName = {"Agostinho", "Aguiar", "Albuquerque", "Alencastro", "Almeida", "Alves", "Alvim",
                "Amorim", "Andrade", "Antunes", "Aragao", "Araujo", "Arruda", "Assis", "Assuncao",
                "Avila", "Baptista", "Barbosa", "Barreto", "Barros", "Belchior", "Bernardes",
                "Bittencourt", "Boaventura", "Bonfim", "Brites", "Brito", "Caetano", "Caldeira",
                "Calixto", "Camacho", "Campos", "Capelo", "Cardoso", "Carvalho", "Castro", "Cavalcante",
                "Cavalcanti", "Chaves", "Conceicao", "Cortes", "Costa", "Coutinho", "Cunha",
                "da Conceicao", "da Costa", "da Cruz", "da Cunha", "da Luz", "da Mata",
                "da Mota", "da Paz", "da Rocha", "da Rosa", "Damasio", "Dantas", "das Neves", "Dias",
                "Dinis", "Domingues", "Dorneles", "dos Reis", "Drumond", "Duarte", "Escobar", "Espinosa",
                "Esteves", "Evangelista", "Farias", "Felix", "Fernandes", "Ferrari", "Ferreira",
                "Figueiredo", "Figueiroa", "Flores", "Fogaca", "Freitas", "Frutuoso", "Furtado",
                "Galvao", "Garcia", "Gaspar", "Gentil", "Geraldes", "Gil", "Gomes", "Goncalves",
                "Gonzaga", "Goulart", "Gouveia", "Guedes", "Guimaraes", "Guterres", "Hernandes",
                "Hilario", "Hipolito", "Ibrahim", "Ilha", "Infante", "Jaques", "Lacerda", "Leiria",
                "Lessa", "Lima", "Lopes", "Machado", "Maciel", "Magalhaes", "Maia", "Maldonado",
                "Marinho", "Marques", "Martins", "Medeiros", "Meireles", "Mello", "Melo", "Mendes",
                "Menezes", "Mesquita", "Modesto", "Monteiro", "Moraes", "Morais", "Moreira",
                "Morgado", "Moura", "Muniz", "Nascimento", "Neves", "Nobrega", "Nogueira", "Novaes",
                "Novais", "Nunes", "Oliveira", "Ornelas", "Ourique", "Pacheco", "Padilha", "Paiva",
                "Peixoto", "Peralta", "Pereira", "Peres", "Pilar", "Pimenta", "Pinheiro", "Pinto",
                "Pires", "Portela", "Porto", "Quaresma", "Queiroz", "Ramires", "Ramos", "Rebelo",
                "Resende", "Rezende", "Ribeiro", "Rocha", "Rodrigues", "Salazar", "Sales",
                "Salgado", "Salgueiro", "Sampaio", "Sanches", "Santana", "Santos", "Silva", "Silveira",
                "Siqueira", "Soares", "Souza", "Tavares", "Taveira", "Teixeira", "Teles", "Torres",
                "Trindade", "Varela", "Vargas", "Vasconcelos", "Vasques", "Veiga", "Veloso", "Viana",
                "Vidal", "Vieira", "Vilela", "Xavier", "Ximenes", "Xisco", "Zagalo", "Zaganelli",
                "Zanette"};

        return lastName[MathUtil.getRandomNumber(lastName.length - MathUtil.ONE)];
    }
}
