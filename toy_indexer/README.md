# Recherche d'information

```
Usage: python ./toy_indexer/main.py (filename+)
Options:
  -h, --help            show this help message and exit
  -s, --stemmer         apply stemmer
  -w, --stopwords       remove stopwords
  -q, --query           open query mode
  -i, --index           show index
  -o OUTPUT_DIR, --output_dir=OUTPUT_DIR
                        data output dir
  -S STEP, --step=STEP  step for stats
  -a ALGO, --algorithm=ALGO
                        algorithm to use to enter query mode, values: all
                        bool bm25 ltc ltn
  -A ALGO_SENTENCE, --algorithm_sentence="web ranking scoring algorithm"
                        algorithm try value
  -B BM25B, --bm25b=0.75
                        value of b if --algorithm=bm25
  -K BM25K1, --bm25k1=1.2
                        value of k1 if --algorithm=bm25
```

## Compute algorithm

You can compute 4 algorithms to query: bool bm25 ltc ltn using the -a argument, using "all" (default) will compute all the algorithm
on the test sentence

```bash
python main.py FILES -a ALGORITHM
```

To select the $k_1$ or the $b$ argument for the BM25 algorithm, you can use the -B and -K argument

```bash
python main.py FILES -a bm25 -B 0.75 -K 1.2
```

### All examples

```
Antoine:H:\Vuze Downloads\data\ri\RechercheInformation\practice3 (main)> python .\main.py ..\..\archive\Practice_03_data\Text_Only_Ascii_Coll_NoSem.zip
[0.000s] Starting...
[0.016s] Reading Text_Only_Ascii_Coll_NoSem.zip\Text_Only_Ascii_Coll_NoSem...
[26.281s] Reading completed
[26.281s] Computing algorithm bm25
[29.375s] test ranked retrieval... 'web ranking scoring algorithm'
- 23724 (5.631268237150827)
- 18336216 (5.090279872425114)
- 207747 (4.938184894135491)
- 2086074 (4.837464452070908)
- 6082436 (4.808593435787046)
- 15116785 (4.803006846802702)
- 1803281 (4.759158233376921)
- 6415715 (4.680669011661157)
- 5018563 (4.59750547376847)
- 10535584 (4.597065554644773)
[29.375s] Computing algorithm ltc
[35.609s] test ranked retrieval... 'web ranking scoring algorithm'
- 2363262 (0.22806510122524618)
- 10416781 (0.2156129374627568)
- 8080270 (0.19751481273278537)
- 5883652 (0.183207202667101)
- 18622152 (0.1769017980203952)
- 18096221 (0.1750311465111199)
- 12985913 (0.17218519285376735)
- 9981737 (0.17142218359219843)
- 17303714 (0.16989500118972262)
- 5822019 (0.16666958382516464)
[35.641s] Computing algorithm ltn
[38.109s] test ranked retrieval... 'web ranking scoring algorithm'
- 23724 (7.1313272291347545)
- 448834 (6.1210037661072185)
- 207747 (5.778708169158351)
- 18336216 (5.704868200715063)
- 2292623 (5.327011664210744)
- 2606518 (5.248188732020951)
- 6861556 (5.225724549344589)
- 18963457 (5.205531443986972)
- 363695 (5.196984869130263)
- 719095 (5.152116958466727)
[38.109s] Completed...

Indexing time:   38.109375s
Doc count:       9804 doc(s)
Word count:      11699504 word(s)
Vocabulary size: 277357 word(s)
List avoided because doc count > 10
```

## Query mode

To open the query mode, add -q in the argument, the query mode will ask for a query and answer the 10 best
answers or 10 answers if algo = bool

```
> web ranking scoring algorithm
4114 element(s) in 0.0s
- 23724 (5.631268237150827)
- 18336216 (5.090279872425114)
- 207747 (4.938184894135491)
- 2086074 (4.837464452070908)
- 6082436 (4.808593435787046)
- 15116785 (4.803006846802702)
- 1803281 (4.759158233376921)
- 6415715 (4.680669011661157)
- 5018563 (4.59750547376847)
- 10535584 (4.597065554644773)
```
