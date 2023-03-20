package ajout.bis;

import java.util.List;

public class Show {
    private String name;
    private List<Season> seasons;

    public Show(String name, List<Season> seasons) {
        this.name = name;
        this.seasons = seasons;
    }

    public String getName() {
        return name;
    }

    public List<Season> getSeasons() {
        return seasons;
    }
}
