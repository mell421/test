package ajout.bis;

public class Episode {
    protected String name;
    protected double season;
    protected double episode;
    protected String status;
    protected String category;

    public Episode(String name, double season, double episode, String status, String category) {
        this.name = name;
        this.season = season;
        this.episode = episode;
        this.status = status;
        this.category = category;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getSeason() {
        return season;
    }

    public void setSeason(double season) {
        this.season = season;
    }

    public double getEpisode() {
        return episode;
    }

    public void setEpisode(double episode) {
        this.episode = episode;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
}
