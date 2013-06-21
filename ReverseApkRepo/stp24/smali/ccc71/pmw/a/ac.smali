.class public final Lccc71/pmw/a/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/pmw/a/ac;->f:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 10
    .parameter

    .prologue
    const/4 v4, 0x5

    const/4 v2, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v9, p0, Lccc71/pmw/a/ac;->f:Ljava/lang/String;

    .line 21
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 24
    :cond_1
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 25
    array-length v0, v3

    if-lt v0, v2, :cond_0

    .line 28
    aget-object v0, v3, v1

    iput-object v0, p0, Lccc71/pmw/a/ac;->a:Ljava/lang/String;

    .line 31
    const/4 v0, 0x1

    :try_start_0
    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lccc71/pmw/a/ac;->b:I

    .line 32
    const/4 v0, 0x2

    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lccc71/pmw/a/ac;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_1
    array-length v0, v3

    if-lt v0, v4, :cond_2

    .line 44
    const/4 v0, 0x3

    :try_start_1
    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lccc71/pmw/a/ac;->e:I

    .line 45
    const/4 v0, 0x4

    aget-object v0, v3, v0

    iput-object v0, p0, Lccc71/pmw/a/ac;->g:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    :cond_2
    :goto_2
    array-length v0, v3

    const/4 v2, 0x6

    if-lt v0, v2, :cond_3

    .line 56
    aget-object v0, v3, v4

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 57
    array-length v2, v0

    if-ne v2, v5, :cond_5

    .line 61
    aget-object v0, v3, v4

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 62
    array-length v0, v2

    div-int/lit8 v4, v0, 0x2

    .line 65
    const/4 v0, 0x3

    :try_start_2
    filled-new-array {v4, v0}, [I

    move-result-object v0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lccc71/pmw/a/ac;->d:[[I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 66
    :goto_3
    if-lt v1, v4, :cond_4

    .line 102
    :cond_3
    :goto_4
    array-length v0, v3

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 104
    const/4 v0, 0x6

    aget-object v0, v3, v0

    iput-object v0, p0, Lccc71/pmw/a/ac;->f:Ljava/lang/String;

    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    iput v1, p0, Lccc71/pmw/a/ac;->b:I

    .line 37
    iput v1, p0, Lccc71/pmw/a/ac;->c:I

    goto :goto_1

    .line 49
    :catch_1
    move-exception v0

    iput v1, p0, Lccc71/pmw/a/ac;->e:I

    .line 50
    iput-object v9, p0, Lccc71/pmw/a/ac;->g:Ljava/lang/String;

    goto :goto_2

    .line 68
    :cond_4
    :try_start_3
    iget-object v0, p0, Lccc71/pmw/a/ac;->d:[[I

    aget-object v0, v0, v1

    const/4 v5, 0x0

    mul-int/lit8 v6, v1, 0x2

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v0, v5

    .line 69
    iget-object v0, p0, Lccc71/pmw/a/ac;->d:[[I

    aget-object v0, v0, v1

    const/4 v5, 0x1

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v0, v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 74
    :catch_2
    move-exception v0

    iput-object v9, p0, Lccc71/pmw/a/ac;->d:[[I

    goto :goto_4

    .line 77
    :cond_5
    array-length v2, v0

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 81
    aget-object v2, v0, v5

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 84
    const/4 v2, 0x0

    :try_start_4
    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 85
    array-length v0, v4

    div-int v6, v0, v5

    .line 86
    filled-new-array {v6, v5}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lccc71/pmw/a/ac;->d:[[I

    move v2, v1

    .line 87
    :goto_5
    if-ge v2, v6, :cond_3

    move v0, v1

    .line 89
    :goto_6
    if-lt v0, v5, :cond_6

    .line 87
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    .line 91
    :cond_6
    iget-object v7, p0, Lccc71/pmw/a/ac;->d:[[I

    aget-object v7, v7, v2

    mul-int v8, v2, v5

    add-int/2addr v8, v0

    aget-object v8, v4, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 97
    :catch_3
    move-exception v0

    iput-object v9, p0, Lccc71/pmw/a/ac;->d:[[I

    goto :goto_4
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    iget-object v0, p0, Lccc71/pmw/a/ac;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v0, "_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget v0, p0, Lccc71/pmw/a/ac;->b:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    const-string v0, "_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget v0, p0, Lccc71/pmw/a/ac;->c:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    const-string v0, "_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget v0, p0, Lccc71/pmw/a/ac;->e:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    const-string v0, "_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget-object v0, p0, Lccc71/pmw/a/ac;->g:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v0, "_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-object v0, p0, Lccc71/pmw/a/ac;->d:[[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/a/ac;->d:[[I

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lccc71/pmw/a/ac;->d:[[I

    aget-object v0, v0, v1

    array-length v4, v0

    .line 124
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    const-string v0, "x"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v0, p0, Lccc71/pmw/a/ac;->d:[[I

    array-length v5, v0

    move v2, v1

    .line 127
    :goto_0
    if-lt v2, v5, :cond_1

    .line 136
    :cond_0
    const-string v0, "_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-object v0, p0, Lccc71/pmw/a/ac;->f:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v1

    .line 129
    :goto_1
    if-lt v0, v4, :cond_2

    .line 127
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 131
    :cond_2
    iget-object v6, p0, Lccc71/pmw/a/ac;->d:[[I

    aget-object v6, v6, v2

    aget v6, v6, v0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    const-string v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
