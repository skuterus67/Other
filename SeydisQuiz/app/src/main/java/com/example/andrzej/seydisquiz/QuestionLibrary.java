package com.example.andrzej.seydisquiz;

/**
 * Created by Andrzej on 2017-08-20.
 */

public class QuestionLibrary {

    private String mQuestions[] = {
            "Ile karetek stoi przed szpitalem?",
            "O której godzinie jest zamykany basen w dni robocze?",
            "Kiedy została założona szkoła w Seydis?",
            "Jak wysoki jest Bjolfur?",
            "W którym roku urodził się Otto Andreas Wathne?",
            "Pod jakim numerem znajduje się apteka?",
            "Po ile stoi dzisiaj benzyna (liczba oktanowa 95)?",
            "Czyje prace NIE znajdują się w galerii nad Skaftfelem?",
            "Gdzie NIE znajduje się konsulat Szwecji w mieście?",
            "Ile liter znajduje się w islandzkim słowie 'port Seydisfjordur'?",
            "Jaką drogą dojedziesz do Egilsstadir?",
            "Czego zakazuje znak znajdujący się na moście?",
            "Z ilu pasów można załadować samochód na prom?",
            "Ile usług oferuje afisz na witrynie komisariatu?",
            "Ile niebieskich pasów znajduje się na 'Tęczowej Drodze'?",
            "Gdzie chcesz dzisiaj iść na kolację?"
    };

    private String mChoices[][]={
            {"0","1","2"},
            {"18:00","19:00","20:00"},
            {"1913","1909","1907"},
            {"981m n.p.m.","1086m n.p.m.","1124m n.p.m."},
            {"1843","1856","1898"},
            {"15","18","30"},
            {"198","187","196"},
            {"Richard Skelton","Jonas Halgrimmson","Kati Gausmann"},
            {"Bjolfsgata","Muzeum","Fjardarbakki"},
            {"17","18","20"},
            {"92","93","94"},
            {"Skakania z mostu","Parkowania","Łowienia ryb"},
            {"7","10","15"},
            {"4","7","11"},
            {"29","30","31"},
            {"Skatfell","Nordic","Sushi"},
    };

    private String mCorrectAnswers[] = {"1", "20:00", "1907", "1086m n.p.m.", "1843", "18",
            "198", "Jonas Halgrimmson", "Fjardarbakki", "17", "93",
            "Łowienia ryb", "15", "7", "29", ""};

    public String getQuestion(int a){
        String question = mQuestions[a];
        return question;
    }

    public String getChoice1(int a){
        String choice0 = mChoices[a][0];
        return choice0;
    }

    public String getChoice2(int a){
        String choice1 = mChoices[a][1];
        return choice1;
    }

    public String getChoice3(int a){
        String choice2 = mChoices[a][2];
        return choice2;
    }

    public String getCorrectAnswer(int a){
        String answer = mCorrectAnswers[a];
        return answer;
    }
}
