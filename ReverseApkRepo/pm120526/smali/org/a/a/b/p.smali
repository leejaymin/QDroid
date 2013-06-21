.class final Lorg/a/a/b/p;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Lorg/a/a/b/p;

.field private static b:Ljava/util/WeakHashMap;


# instance fields
.field private final c:Ljava/lang/ref/WeakReference;

.field private final d:[Ljava/lang/String;

.field private final e:[Ljava/lang/String;

.field private final f:[Ljava/lang/String;

.field private final g:[Ljava/lang/String;

.field private final h:[Ljava/lang/String;

.field private final i:[Ljava/lang/String;

.field private final j:Ljava/util/TreeMap;

.field private final k:Ljava/util/TreeMap;

.field private final l:Ljava/util/TreeMap;

.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:I

.field private final q:I

.field private final r:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [Lorg/a/a/b/p;

    sput-object v0, Lorg/a/a/b/p;->a:[Lorg/a/a/b/p;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/a/a/b/p;->b:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;)V
    .locals 5

    const/16 v4, 0xd

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/a/a/b/p;->c:Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lorg/a/a/f;->a(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/a/a/b/p;->d:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/a/a/b/p;->b([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/a/a/b/p;->e:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/a/a/b/p;->b([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/a/a/b/p;->f:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/a/a/b/p;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/a/a/b/p;->g:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/a/a/b/p;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/a/a/b/p;->h:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/a/a/b/p;->i:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/Integer;

    move v1, v3

    :goto_0
    if-ge v1, v4, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lorg/a/a/b/p;->j:Ljava/util/TreeMap;

    iget-object v1, p0, Lorg/a/a/b/p;->j:Ljava/util/TreeMap;

    iget-object v2, p0, Lorg/a/a/b/p;->d:[Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lorg/a/a/b/p;->a(Ljava/util/TreeMap;[Ljava/lang/String;[Ljava/lang/Integer;)V

    const-string v1, "en"

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/a/a/b/p;->j:Ljava/util/TreeMap;

    const-string v2, "BCE"

    aget-object v3, v0, v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/a/a/b/p;->j:Ljava/util/TreeMap;

    const-string v2, "CE"

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v1, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lorg/a/a/b/p;->k:Ljava/util/TreeMap;

    iget-object v1, p0, Lorg/a/a/b/p;->k:Ljava/util/TreeMap;

    iget-object v2, p0, Lorg/a/a/b/p;->e:[Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lorg/a/a/b/p;->a(Ljava/util/TreeMap;[Ljava/lang/String;[Ljava/lang/Integer;)V

    iget-object v1, p0, Lorg/a/a/b/p;->k:Ljava/util/TreeMap;

    iget-object v2, p0, Lorg/a/a/b/p;->f:[Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lorg/a/a/b/p;->a(Ljava/util/TreeMap;[Ljava/lang/String;[Ljava/lang/Integer;)V

    iget-object v1, p0, Lorg/a/a/b/p;->k:Ljava/util/TreeMap;

    const/4 v2, 0x7

    invoke-static {v1, v2, v0}, Lorg/a/a/b/p;->a(Ljava/util/TreeMap;I[Ljava/lang/Integer;)V

    new-instance v1, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lorg/a/a/b/p;->l:Ljava/util/TreeMap;

    iget-object v1, p0, Lorg/a/a/b/p;->l:Ljava/util/TreeMap;

    iget-object v2, p0, Lorg/a/a/b/p;->g:[Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lorg/a/a/b/p;->a(Ljava/util/TreeMap;[Ljava/lang/String;[Ljava/lang/Integer;)V

    iget-object v1, p0, Lorg/a/a/b/p;->l:Ljava/util/TreeMap;

    iget-object v2, p0, Lorg/a/a/b/p;->h:[Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lorg/a/a/b/p;->a(Ljava/util/TreeMap;[Ljava/lang/String;[Ljava/lang/Integer;)V

    iget-object v1, p0, Lorg/a/a/b/p;->l:Ljava/util/TreeMap;

    const/16 v2, 0xc

    invoke-static {v1, v2, v0}, Lorg/a/a/b/p;->a(Ljava/util/TreeMap;I[Ljava/lang/Integer;)V

    iget-object v0, p0, Lorg/a/a/b/p;->d:[Ljava/lang/String;

    invoke-static {v0}, Lorg/a/a/b/p;->c([Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/a/a/b/p;->m:I

    iget-object v0, p0, Lorg/a/a/b/p;->e:[Ljava/lang/String;

    invoke-static {v0}, Lorg/a/a/b/p;->c([Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/a/a/b/p;->n:I

    iget-object v0, p0, Lorg/a/a/b/p;->f:[Ljava/lang/String;

    invoke-static {v0}, Lorg/a/a/b/p;->c([Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/a/a/b/p;->o:I

    iget-object v0, p0, Lorg/a/a/b/p;->g:[Ljava/lang/String;

    invoke-static {v0}, Lorg/a/a/b/p;->c([Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/a/a/b/p;->p:I

    iget-object v0, p0, Lorg/a/a/b/p;->h:[Ljava/lang/String;

    invoke-static {v0}, Lorg/a/a/b/p;->c([Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/a/a/b/p;->q:I

    iget-object v0, p0, Lorg/a/a/b/p;->i:[Ljava/lang/String;

    invoke-static {v0}, Lorg/a/a/b/p;->c([Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/a/a/b/p;->r:I

    return-void
.end method

.method public static a(Ljava/util/Locale;)Lorg/a/a/b/p;
    .locals 5

    if-nez p0, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    and-int/lit8 v1, v1, 0x3f

    sget-object v2, Lorg/a/a/b/p;->a:[Lorg/a/a/b/p;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v3, v2, Lorg/a/a/b/p;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_0

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    sget-object v2, Lorg/a/a/b/p;->b:Ljava/util/WeakHashMap;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lorg/a/a/b/p;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/a/a/b/p;

    if-nez p0, :cond_1

    new-instance v3, Lorg/a/a/b/p;

    invoke-direct {v3, v0}, Lorg/a/a/b/p;-><init>(Ljava/util/Locale;)V

    sget-object v4, Lorg/a/a/b/p;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v0, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v3

    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v2, Lorg/a/a/b/p;->a:[Lorg/a/a/b/p;

    aput-object v0, v2, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    move-object v0, p0

    goto :goto_2

    :cond_2
    move-object v0, p0

    goto :goto_0
.end method

.method private static a(Ljava/util/TreeMap;I[Ljava/lang/Integer;)V
    .locals 3

    const/4 v0, 0x1

    :goto_0
    if-gt v0, p1, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/TreeMap;[Ljava/lang/String;[Ljava/lang/Integer;)V
    .locals 3

    array-length v0, p1

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const/16 v4, 0xd

    const/4 v3, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move v1, v3

    :goto_0
    if-ge v1, v4, :cond_0

    sub-int v2, v1, v3

    aget-object v2, p0, v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static b([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move v1, v3

    :goto_0
    if-ge v1, v4, :cond_1

    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    :goto_1
    aget-object v2, p0, v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private static c([Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    array-length v1, p0

    move v3, v1

    move v1, v0

    move v0, v3

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    aget-object v2, p0, v0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lorg/a/a/b/p;->m:I

    return v0
.end method

.method public final a(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lorg/a/a/b/p;->j:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Lorg/a/a/n;

    invoke-static {}, Lorg/a/a/d;->w()Lorg/a/a/d;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/a/a/n;-><init>(Lorg/a/a/d;Ljava/lang/String;)V

    throw v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/a/a/b/p;->d:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lorg/a/a/b/p;->p:I

    return v0
.end method

.method public final b(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lorg/a/a/b/p;->l:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Lorg/a/a/n;

    invoke-static {}, Lorg/a/a/d;->r()Lorg/a/a/d;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/a/a/n;-><init>(Lorg/a/a/d;Ljava/lang/String;)V

    throw v0
.end method

.method public final b(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/a/a/b/p;->g:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lorg/a/a/b/p;->n:I

    return v0
.end method

.method public final c(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lorg/a/a/b/p;->k:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Lorg/a/a/n;

    invoke-static {}, Lorg/a/a/d;->l()Lorg/a/a/d;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/a/a/n;-><init>(Lorg/a/a/d;Ljava/lang/String;)V

    throw v0
.end method

.method public final c(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/a/a/b/p;->h:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lorg/a/a/b/p;->r:I

    return v0
.end method

.method public final d(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lorg/a/a/b/p;->i:[Ljava/lang/String;

    array-length v1, v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_1
    new-instance v0, Lorg/a/a/n;

    invoke-static {}, Lorg/a/a/d;->k()Lorg/a/a/d;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/a/a/n;-><init>(Lorg/a/a/d;Ljava/lang/String;)V

    throw v0
.end method

.method public final d(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/a/a/b/p;->e:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final e(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/a/a/b/p;->f:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final f(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/a/a/b/p;->i:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method
