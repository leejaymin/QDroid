.class final Lcom/inisoft/mediaplayer/dr;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/MediaListActivity;

.field private b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/inisoft/mediaplayer/MediaListActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1

    iput-object p1, p0, Lcom/inisoft/mediaplayer/dr;->a:Lcom/inisoft/mediaplayer/MediaListActivity;

    const v0, 0x7f03003a

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p3, p0, Lcom/inisoft/mediaplayer/dr;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/4 v9, 0x0

    const-wide/16 v7, 0x400

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dr;->a:Lcom/inisoft/mediaplayer/MediaListActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/MediaListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03003a

    invoke-virtual {v0, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/dr;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/ds;

    if-eqz v0, :cond_2

    const v1, 0x7f050092

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f050093

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v3, v0, Lcom/inisoft/mediaplayer/ds;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v2, :cond_2

    iget-object v1, v0, Lcom/inisoft/mediaplayer/ds;->e:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_4

    const-wide/32 v5, 0x100000

    cmp-long v1, v3, v5

    if-gez v1, :cond_4

    div-long/2addr v3, v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "KB"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v1, p0, Lcom/inisoft/mediaplayer/dr;->a:Lcom/inisoft/mediaplayer/MediaListActivity;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/MediaListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const v1, 0x7f05004a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/ds;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v0, 0x3

    invoke-static {v2, v3, v4, v0, v9}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    return-object p2

    :cond_4
    div-long/2addr v3, v7

    div-long/2addr v3, v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "MB"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
