package net.togogo.bean;

public class result {
    private String stuno;
    private String subjectName;
    private int score;
    private int age;

    public String getStuno() {
        return stuno;
    }

    public void setStuno(String stuno) {
        this.stuno = stuno;
    }

    public String getSubjectName() {
        return subjectName;
    }

    public void setSubjectName(String subjectName) {
        this.subjectName = subjectName;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public result(String stuno, String subjectName, int score, int age) {
        this.stuno = stuno;
        this.subjectName = subjectName;
        this.score = score;
        this.age = age;
    }

    public result() {
    }
}
