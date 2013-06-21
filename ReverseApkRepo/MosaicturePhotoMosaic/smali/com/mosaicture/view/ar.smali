.class public final Lcom/mosaicture/view/ar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/markupartist/android/widget/b;


# instance fields
.field final synthetic a:Lcom/mosaicture/view/TabSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/mosaicture/view/TabSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/view/ar;->a:Lcom/mosaicture/view/TabSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const v0, 0x7f020015

    return v0
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/mosaicture/view/BaseApp;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mosaicture/view/ar;->a:Lcom/mosaicture/view/TabSettingsActivity;

    invoke-virtual {v0}, Lcom/mosaicture/view/TabSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mosaicture/view/ar;->a:Lcom/mosaicture/view/TabSettingsActivity;

    invoke-virtual {v1}, Lcom/mosaicture/view/TabSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07002c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mosaicture/view/b;->a:Lcom/mosaicture/view/b;

    invoke-static {v0, v1, v2}, Lcom/mosaicture/view/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mosaicture/view/b;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mosaicture/view/ar;->a:Lcom/mosaicture/view/TabSettingsActivity;

    invoke-virtual {v0}, Lcom/mosaicture/view/TabSettingsActivity;->b()V

    goto :goto_0
.end method
