package ajout.bis;

import java.util.List;

public class Season {
    private String name;
    private int seasonNumber;
    private List<Episode> episodes;

    public Season(String name, int seasonNumber, List<Episode> episodes) {
        this.name = name;
        this.seasonNumber = seasonNumber;
        this.episodes = episodes;
    }

    public String getName() {
        return name;
    }

    public int getSeasonNumber() {
        return seasonNumber;
    }

    public List<Episode> getEpisodes() {
        return episodes;
    }
}
