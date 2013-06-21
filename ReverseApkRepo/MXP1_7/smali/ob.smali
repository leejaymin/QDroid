.class public Lob;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final ㅼ꽑嫄:Z

.field private 弱밧:Ljava/io/File;

.field private final 癤욱븳援:Landroid/app/Activity;

.field private final 궗:Lfm;

.field private final 먯꽌:Lmr;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lfm;Landroid/net/Uri;ZLmr;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lob;->癤욱븳援:Landroid/app/Activity;

    iput-object p2, p0, Lob;->궗:Lfm;

    iput-boolean p4, p0, Lob;->ㅼ꽑嫄:Z

    iput-object p5, p0, Lob;->먯꽌:Lmr;

    const-class v0, Lll;

    invoke-virtual {p2, v0}, Lfm;->癤욱븳援(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p5}, Lmr;->대떎()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lms;->붿슧()Ljava/io/File;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    if-eqz p3, :cond_3

    const-string v1, "file"

    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    :cond_4
    new-instance v1, Lll;

    invoke-direct {v1, p1}, Lll;-><init>(Landroid/content/Context;)V

    invoke-interface {p5}, Lmr;->留먰븷()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lll;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2}, Lee;->癤욱븳援(Landroid/view/Window;)V

    :cond_5
    sget v2, Lnt;->choose_subtitle_file:I

    invoke-virtual {v1, v2}, Lll;->setTitle(I)V

    sget-object v2, Lht;->癤욱븳援:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lll;->癤욱븳援([Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lll;->癤욱븳援(Ljava/io/File;)V

    invoke-virtual {v1, p0}, Lll;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p2, v1}, Lfm;->癤욱븳援(Landroid/content/DialogInterface;)V

    invoke-virtual {v1}, Lll;->show()V

    invoke-virtual {v1, p1}, Lll;->setOwnerActivity(Landroid/app/Activity;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lob;->먯꽌:Lmr;

    iget-object v1, p0, Lob;->弱밧:Ljava/io/File;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lmr;->癤욱븳援(Ljava/io/File;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lob;->먯꽌:Lmr;

    iget-object v1, p0, Lob;->弱밧:Ljava/io/File;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lmr;->癤욱븳援(Ljava/io/File;Z)V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lob;->궗:Lfm;

    invoke-virtual {v0, p1}, Lfm;->궗(Landroid/content/DialogInterface;)V

    instance-of v0, p1, Lll;

    if-eqz v0, :cond_0

    check-cast p1, Lll;

    invoke-virtual {p1}, Lll;->癤욱븳援()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lob;->弱밧:Ljava/io/File;

    iget-object v0, p0, Lob;->弱밧:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lob;->癤욱븳援:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lob;->ㅼ꽑嫄:Z

    if-eqz v0, :cond_3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lob;->癤욱븳援:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lnt;->subtitle_replace_inquire_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    sget v1, Lnt;->subtitle_replace_inquire:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    sget v1, Lnt;->replace:I

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget v1, Lnt;->add:I

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lob;->먯꽌:Lmr;

    invoke-interface {v1}, Lmr;->留먰븷()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lee;->癤욱븳援(Landroid/view/Window;)V

    :cond_2
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lob;->궗:Lfm;

    invoke-virtual {v1, v0}, Lfm;->癤욱븳援(Landroid/content/DialogInterface;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v1, p0, Lob;->癤욱븳援:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lob;->먯꽌:Lmr;

    iget-object v1, p0, Lob;->弱밧:Ljava/io/File;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lmr;->癤욱븳援(Ljava/io/File;Z)V

    goto :goto_0
.end method
