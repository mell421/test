package test.ajout.serie;

import java.util.ArrayList;
import java.util.List;

public class TvTracker {
    private List<String> channels;
    private List<Episode> episodeList;

    public TvTracker() {
        this.channels = new ArrayList<>();
    }

    public void addChannel(String channel) {
        this.channels.add(channel);
    }

    public void removeChannel(String channel) {
        this.channels.remove(channel);
    }

    public List<String> getChannels() {
        return this.channels;
    }

    public static void main(String[] args) {
        Episode episode = new Episode("Titre",2,6,"en cours","autre");
        System.out.println(episode.name);
    }
}