.class public Lpl/polidea/imagemanager/ImageManagerRequest;
.super Ljava/lang/Object;
.source "ImageManagerRequest.java"


# instance fields
.field public alignment:I

.field public filename:Ljava/lang/String;

.field public height:I

.field public preview:Z

.field public resId:I

.field public strong:Z

.field public subsample:I

.field public uri:Landroid/net/Uri;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v2, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->filename:Ljava/lang/String;

    .line 22
    iput v0, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->resId:I

    .line 27
    iput-object v2, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->uri:Landroid/net/Uri;

    .line 32
    iput v1, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->subsample:I

    .line 37
    iput v0, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->width:I

    .line 42
    iput v0, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->height:I

    .line 47
    iput-boolean v1, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->preview:Z

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->strong:Z

    .line 57
    const/4 v0, -0x2

    iput v0, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->alignment:I

    .line 65
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "resId"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v2, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->filename:Ljava/lang/String;

    .line 22
    iput v0, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->resId:I

    .line 27
    iput-object v2, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->uri:Landroid/net/Uri;

    .line 32
    iput v1, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->subsample:I

    .line 37
    iput v0, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->width:I

    .line 42
    iput v0, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->height:I

    .line 47
    iput-boolean v1, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->preview:Z

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->strong:Z

    .line 57
    const/4 v0, -0x2

    iput v0, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->alignment:I

    .line 86
    iput p1, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->resId:I

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v2, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->filename:Ljava/lang/String;

    .line 22
    iput v0, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->resId:I

    .line 27
    iput-object v2, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->uri:Landroid/net/Uri;

    .line 32
    iput v1, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->subsample:I

    .line 37
    iput v0, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->width:I

    .line 42
    iput v0, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->height:I

    .line 47
    iput-boolean v1, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->preview:Z

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->strong:Z

    .line 57
    const/4 v0, -0x2

    iput v0, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->alignment:I

    .line 97
    iput-object p1, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->uri:Landroid/net/Uri;

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "filename"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v2, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->filename:Ljava/lang/String;

    .line 22
    iput v0, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->resId:I

    .line 27
    iput-object v2, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->uri:Landroid/net/Uri;

    .line 32
    iput v1, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->subsample:I

    .line 37
    iput v0, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->width:I

    .line 42
    iput v0, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->height:I

    .line 47
    iput-boolean v1, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->preview:Z

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->strong:Z

    .line 57
    const/4 v0, -0x2

    iput v0, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->alignment:I

    .line 75
    iput-object p1, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->filename:Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 119
    if-ne p0, p1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v1

    .line 123
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 125
    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 129
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 131
    check-cast v0, Lpl/polidea/imagemanager/ImageManagerRequest;

    .line 132
    .local v0, other:Lpl/polidea/imagemanager/ImageManagerRequest;
    iget-object v3, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->filename:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 134
    iget-object v3, v0, Lpl/polidea/imagemanager/ImageManagerRequest;->filename:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 136
    goto :goto_0

    .line 139
    :cond_4
    iget-object v3, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->filename:Ljava/lang/String;

    iget-object v4, v0, Lpl/polidea/imagemanager/ImageManagerRequest;->filename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 141
    goto :goto_0

    .line 143
    :cond_5
    iget v3, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->height:I

    iget v4, v0, Lpl/polidea/imagemanager/ImageManagerRequest;->height:I

    if-eq v3, v4, :cond_6

    move v1, v2

    .line 145
    goto :goto_0

    .line 147
    :cond_6
    iget-boolean v3, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->preview:Z

    iget-boolean v4, v0, Lpl/polidea/imagemanager/ImageManagerRequest;->preview:Z

    if-eq v3, v4, :cond_7

    move v1, v2

    .line 149
    goto :goto_0

    .line 151
    :cond_7
    iget v3, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->resId:I

    iget v4, v0, Lpl/polidea/imagemanager/ImageManagerRequest;->resId:I

    if-eq v3, v4, :cond_8

    move v1, v2

    .line 153
    goto :goto_0

    .line 155
    :cond_8
    iget-boolean v3, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->strong:Z

    iget-boolean v4, v0, Lpl/polidea/imagemanager/ImageManagerRequest;->strong:Z

    if-eq v3, v4, :cond_9

    move v1, v2

    .line 157
    goto :goto_0

    .line 159
    :cond_9
    iget v3, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->subsample:I

    iget v4, v0, Lpl/polidea/imagemanager/ImageManagerRequest;->subsample:I

    if-eq v3, v4, :cond_a

    move v1, v2

    .line 161
    goto :goto_0

    .line 163
    :cond_a
    iget-object v3, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->uri:Landroid/net/Uri;

    if-nez v3, :cond_b

    .line 165
    iget-object v3, v0, Lpl/polidea/imagemanager/ImageManagerRequest;->uri:Landroid/net/Uri;

    if-eqz v3, :cond_c

    move v1, v2

    .line 167
    goto :goto_0

    .line 170
    :cond_b
    iget-object v3, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->uri:Landroid/net/Uri;

    iget-object v4, v0, Lpl/polidea/imagemanager/ImageManagerRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    move v1, v2

    .line 172
    goto :goto_0

    .line 174
    :cond_c
    iget v3, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->width:I

    iget v4, v0, Lpl/polidea/imagemanager/ImageManagerRequest;->width:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 176
    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v5, 0x4d5

    const/16 v4, 0x4cf

    const/4 v3, 0x0

    .line 103
    const/16 v0, 0x1f

    .line 104
    .local v0, prime:I
    const/4 v1, 0x1

    .line 105
    .local v1, result:I
    iget-object v2, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->filename:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 106
    mul-int/lit8 v2, v1, 0x1f

    iget v6, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->height:I

    add-int v1, v2, v6

    .line 107
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v2, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->preview:Z

    if-eqz v2, :cond_1

    move v2, v4

    :goto_1
    add-int v1, v6, v2

    .line 108
    mul-int/lit8 v2, v1, 0x1f

    iget v6, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->resId:I

    add-int v1, v2, v6

    .line 109
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v6, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->strong:Z

    if-eqz v6, :cond_2

    :goto_2
    add-int v1, v2, v4

    .line 110
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->subsample:I

    add-int v1, v2, v4

    .line 111
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->uri:Landroid/net/Uri;

    if-nez v4, :cond_3

    :goto_3
    add-int v1, v2, v3

    .line 112
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->width:I

    add-int v1, v2, v3

    .line 113
    return v1

    .line 105
    :cond_0
    iget-object v2, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->filename:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v5

    .line 107
    goto :goto_1

    :cond_2
    move v4, v5

    .line 109
    goto :goto_2

    .line 111
    :cond_3
    iget-object v3, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[filename="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->resId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subsample="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->subsample:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 185
    iget v1, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", preview="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->preview:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", strong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->strong:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
