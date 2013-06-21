.class public final LaW;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static a(Landroid/content/Context;ILaZ;)Landroid/app/Dialog;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 29
    invoke-static {v0, p0}, Lan;->a(Landroid/content/pm/PackageManager;Landroid/content/Context;)Lan;

    move-result-object v0

    .line 30
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 32
    new-instance v1, LaX;

    invoke-direct {v1, v0, p2, p1, p0}, LaX;-><init>(Lan;LaZ;ILandroid/content/Context;)V

    .line 57
    const v2, 0x7f0802bb

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v0, v0, Lan;->c:Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 61
    new-instance v2, Les;

    invoke-direct {v2, p0}, Les;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0802ba

    invoke-virtual {v2, v3}, Les;->a(I)Les;

    move-result-object v2

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Les;->a(Ljava/lang/CharSequence;)Les;

    move-result-object v0

    const v2, 0x7f0802bc

    invoke-virtual {v0, v2, v1}, Les;->a(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    .line 69
    :cond_0
    const v1, 0x7f0802be

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v0, v0, Lan;->c:Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 72
    new-instance v1, LaY;

    invoke-direct {v1, p2, p1, p0}, LaY;-><init>(LaZ;ILandroid/content/Context;)V

    .line 86
    new-instance v2, Les;

    invoke-direct {v2, p0}, Les;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0802bd

    invoke-virtual {v2, v3}, Les;->a(I)Les;

    move-result-object v2

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Les;->a(Ljava/lang/CharSequence;)Les;

    move-result-object v0

    const v2, 0x7f0802bf

    invoke-virtual {v0, v2, v1}, Les;->b(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    goto :goto_0
.end method
