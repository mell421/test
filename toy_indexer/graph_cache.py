from index import IndexStore
from time import time


class StatData:
    def __init__(self, dl: int, tl: int, size: int, tf: int, t: float) -> None:
        self.dl: int = dl
        self.tl: int = tl
        self.size: int = size
        self.tf: int = tf
        self.time: float = t


class StatCache:
    def __init__(self, store: IndexStore, step: int) -> None:
        self.store = store
        self.cache = []
        if step <= 0:
            raise Exception("step must be positive")
        self.step = step
        self.step_count = 0

    def start(self) -> None:
        self.start_time = time()

    def compute_stat(self) -> None:
        self.step_count = (self.step_count + 1) % self.step
        if self.step_count == 0:
            self.cache.append(StatData(
                0,  # document length
                0,  # term length
                len(self.store.objects),  # Voc size
                0,  # collection frequency of terms
                time() - self.start_time
            ))

    def produce_stat(self, output_dir: str) -> None:
        pass
