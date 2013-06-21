.class Lelectrum2/drums/changesdpath$1;
.super Ljava/lang/Object;
.source "changesdpath.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/changesdpath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/changesdpath;


# direct methods
.method constructor <init>(Lelectrum2/drums/changesdpath;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/changesdpath$1;->this$0:Lelectrum2/drums/changesdpath;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    .line 52
    :try_start_0
    iget-object v3, p0, Lelectrum2/drums/changesdpath$1;->this$0:Lelectrum2/drums/changesdpath;

    iget-object v3, v3, Lelectrum2/drums/changesdpath;->sdtext:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, newpath:Ljava/lang/String;
    const-string v3, "/electrum"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 56
    const-string v3, "electrum"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 58
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/electrum"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    sput-object v1, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    .line 70
    iget-object v3, p0, Lelectrum2/drums/changesdpath$1;->this$0:Lelectrum2/drums/changesdpath;

    const-string v4, "New path set!"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 71
    .local v2, t:Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 73
    iget-object v3, p0, Lelectrum2/drums/changesdpath$1;->this$0:Lelectrum2/drums/changesdpath;

    invoke-virtual {v3}, Lelectrum2/drums/changesdpath;->finish()V

    .line 108
    .end local v1           #newpath:Ljava/lang/String;
    :goto_0
    return-void

    .line 81
    .end local v2           #t:Landroid/widget/Toast;
    .restart local v1       #newpath:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lelectrum2/drums/changesdpath$1;->this$0:Lelectrum2/drums/changesdpath;

    const-string v4, "Invalid path, there is no \"electrum\" folder under this path."

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 82
    .restart local v2       #t:Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    .end local v1           #newpath:Ljava/lang/String;
    .end local v2           #t:Landroid/widget/Toast;
    :catch_0
    move-exception v0

    .line 99
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lelectrum2/drums/changesdpath$1;->this$0:Lelectrum2/drums/changesdpath;

    const-string v4, "Invalid path, unknown error"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 100
    .restart local v2       #t:Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 89
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #t:Landroid/widget/Toast;
    .restart local v1       #newpath:Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lelectrum2/drums/changesdpath$1;->this$0:Lelectrum2/drums/changesdpath;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid path - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 90
    .restart local v2       #t:Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
