.class public final Limoblife/cmfilemanager/ar;
.super Limoblife/cmfilemanager/e;


# static fields
.field public static final g:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "org.openintents.updatechecker"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.vending"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.a0soft.gphone.aTrackDog"

    aput-object v2, v0, v1

    sput-object v0, Limoblife/cmfilemanager/ar;->g:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    sget v2, Limoblife/cmfilemanager/ao;->ai:I

    sget v3, Limoblife/cmfilemanager/ao;->ah:I

    sget v4, Limoblife/cmfilemanager/ao;->ak:I

    sget v5, Limoblife/cmfilemanager/ao;->al:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Limoblife/cmfilemanager/e;-><init>(Landroid/content/Context;IIII)V

    iput-object p1, p0, Limoblife/cmfilemanager/ar;->a:Landroid/content/Context;

    iget-object v0, p0, Limoblife/cmfilemanager/ar;->a:Landroid/content/Context;

    invoke-static {v0}, Limoblife/a/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Limoblife/cmfilemanager/ar;->a:Landroid/content/Context;

    invoke-static {v1}, Limoblife/a/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Limoblife/cmfilemanager/ar;->a:Landroid/content/Context;

    sget v3, Limoblife/cmfilemanager/ao;->ad:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Limoblife/cmfilemanager/ar;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/ar;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Limoblife/cmfilemanager/ar;->a:Landroid/content/Context;

    sget v1, Limoblife/cmfilemanager/ao;->aj:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Limoblife/cmfilemanager/ar;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    sget v1, Limoblife/cmfilemanager/ao;->a:I

    iget-object v2, p0, Limoblife/cmfilemanager/ar;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/ar;->a(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Limoblife/cmfilemanager/e;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0
.end method
