.class public final Lcom/mosaicture/view/as;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/markupartist/android/widget/b;


# instance fields
.field final synthetic a:Lcom/mosaicture/view/TabSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/mosaicture/view/TabSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/view/as;->a:Lcom/mosaicture/view/TabSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const v0, 0x7f020016

    return v0
.end method

.method public final b()V
    .locals 5

    const/4 v1, 0x1

    invoke-static {}, Lcom/mosaicture/view/TabSettingsActivity;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/mosaicture/view/TabSettingsActivity;->b(Z)V

    sget-object v0, Lcom/mosaicture/view/TabSettingsActivity;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mosaicture/view/TabSettingsActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/mosaicture/view/TabSettingsActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/mosaicture/view/TabSettingsActivity;->a:Lcom/mosaicture/view/aj;

    invoke-virtual {v0}, Lcom/mosaicture/view/aj;->notifyDataSetChanged()V

    sput-boolean v1, Lcom/mosaicture/view/TabSettingsActivity;->d:Z

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/view/a/a;

    iget-object v3, v0, Lcom/mosaicture/view/a/a;->b:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/mosaicture/view/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v0, v0, Lcom/mosaicture/view/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/view/a/b;

    invoke-static {}, Lcom/mosaicture/view/TabSettingsActivity;->i()Z

    move-result v4

    iput-boolean v4, v0, Lcom/mosaicture/view/a/b;->b:Z

    goto :goto_1
.end method
