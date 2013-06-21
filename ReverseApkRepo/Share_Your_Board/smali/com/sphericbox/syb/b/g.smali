.class public Lcom/sphericbox/syb/b/g;
.super Lcom/sphericbox/syb/ui/b;
.source "SourceFile"


# instance fields
.field private U:Lcom/sphericbox/syb/b/e;

.field private bn:Lcom/sphericbox/syb/browse/BrowseActivity;


# direct methods
.method public constructor <init>(Lcom/sphericbox/syb/browse/BrowseActivity;Lcom/sphericbox/syb/b/e;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 22
    const v0, 0x7f08000b

    const v1, 0x7f020012

    invoke-direct {p0, v0, v1}, Lcom/sphericbox/syb/ui/b;-><init>(II)V

    .line 23
    iput-object p1, p0, Lcom/sphericbox/syb/b/g;->bn:Lcom/sphericbox/syb/browse/BrowseActivity;

    .line 24
    iput-object p2, p0, Lcom/sphericbox/syb/b/g;->U:Lcom/sphericbox/syb/b/e;

    .line 25
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/sphericbox/syb/b/g;->U:Lcom/sphericbox/syb/b/e;

    invoke-interface {v0}, Lcom/sphericbox/syb/b/e;->z()Lcom/sphericbox/syb/b;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 43
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    iget-object v1, p0, Lcom/sphericbox/syb/b/g;->bn:Lcom/sphericbox/syb/browse/BrowseActivity;

    invoke-static {v1, v0}, Lcom/sphericbox/syb/j;->a(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 39
    new-instance v1, Lcom/sphericbox/syb/e;

    iget-object v2, p0, Lcom/sphericbox/syb/b/g;->bn:Lcom/sphericbox/syb/browse/BrowseActivity;

    invoke-direct {v1, v2, v3, v0}, Lcom/sphericbox/syb/e;-><init>(Lcom/sphericbox/syb/ui/ActionActivity;ILjava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/sphericbox/syb/b/g;->bn:Lcom/sphericbox/syb/browse/BrowseActivity;

    invoke-virtual {v0, v1}, Lcom/sphericbox/syb/browse/BrowseActivity;->showDialog(Landroid/app/Dialog;)V

    move v0, v3

    .line 43
    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/sphericbox/syb/b/g;->bn:Lcom/sphericbox/syb/browse/BrowseActivity;

    .line 30
    iput-object v0, p0, Lcom/sphericbox/syb/b/g;->U:Lcom/sphericbox/syb/b/e;

    .line 31
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const-string v0, "Size: "

    const-string v0, "Date: "

    const-string v0, "http://shareyourboard.com"

    .line 48
    iget-object v0, p0, Lcom/sphericbox/syb/b/g;->U:Lcom/sphericbox/syb/b/e;

    invoke-interface {v0}, Lcom/sphericbox/syb/b/e;->z()Lcom/sphericbox/syb/b;

    move-result-object v0

    .line 50
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    const-string v2, "image/jpeg"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0}, Lcom/sphericbox/syb/b;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    invoke-virtual {v0}, Lcom/sphericbox/syb/b;->getComment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sphericbox/syb/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sphericbox/syb/b;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Visit our site: http://shareyourboard.com"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v2, "http://shareyourboard.com"

    .line 65
    new-instance v2, Landroid/text/SpannableString;

    const-string v3, "http://shareyourboard.com"

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 66
    new-instance v3, Landroid/text/style/URLSpan;

    const-string v4, "http://shareyourboard.com"

    invoke-direct {v3, v4}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v5

    const/16 v6, 0x11

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 71
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 72
    invoke-virtual {v0}, Lcom/sphericbox/syb/b;->getComment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const-string v5, "Date: "

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sphericbox/syb/b;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const-string v5, "Size: "

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sphericbox/syb/b;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const-string v4, "Visit our site: "

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 80
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 81
    const-string v0, "android.intent.extra.SUBJECT"

    const-string v2, "New image from Share Your Board"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    iget-object v0, p0, Lcom/sphericbox/syb/b/g;->bn:Lcom/sphericbox/syb/browse/BrowseActivity;

    invoke-virtual {v0, v1}, Lcom/sphericbox/syb/browse/BrowseActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    iget-object v1, p0, Lcom/sphericbox/syb/b/g;->bn:Lcom/sphericbox/syb/browse/BrowseActivity;

    invoke-static {v1, v0}, Lcom/sphericbox/syb/j;->a(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 86
    new-instance v1, Lcom/sphericbox/syb/e;

    iget-object v2, p0, Lcom/sphericbox/syb/b/g;->bn:Lcom/sphericbox/syb/browse/BrowseActivity;

    invoke-direct {v1, v2, v7, v0}, Lcom/sphericbox/syb/e;-><init>(Lcom/sphericbox/syb/ui/ActionActivity;ILjava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/sphericbox/syb/b/g;->bn:Lcom/sphericbox/syb/browse/BrowseActivity;

    invoke-virtual {v0, v1}, Lcom/sphericbox/syb/browse/BrowseActivity;->showDialog(Landroid/app/Dialog;)V

    goto :goto_0
.end method
