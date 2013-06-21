.class final Lcom/flurry/android/z;
.super Ljava/util/LinkedHashMap;


# instance fields
.field private synthetic a:Lcom/flurry/android/m;


# direct methods
.method constructor <init>(Lcom/flurry/android/m;I)V
    .locals 2

    iput-object p1, p0, Lcom/flurry/android/z;->a:Lcom/flurry/android/m;

    const/high16 v0, 0x3f40

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected final removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/flurry/android/z;->size()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/android/z;->a:Lcom/flurry/android/m;

    invoke-static {v1}, Lcom/flurry/android/m;->a(Lcom/flurry/android/m;)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
