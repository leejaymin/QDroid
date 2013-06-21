.class public final Limoblife/toolbox/full/g/c;
.super Ljava/lang/Object;

# interfaces
.implements Limoblife/toolbox/full/it/b;


# static fields
.field private static a:Landroid/app/PendingIntent;

.field private static b:Limoblife/toolbox/full/g/c;


# instance fields
.field private c:Limoblife/toolbox/full/it/b;

.field private d:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Limoblife/toolbox/full/g/c;->d:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Limoblife/toolbox/full/g/c;
    .locals 1

    sget-object v0, Limoblife/toolbox/full/g/c;->b:Limoblife/toolbox/full/g/c;

    if-nez v0, :cond_0

    new-instance v0, Limoblife/toolbox/full/g/c;

    invoke-direct {v0, p0}, Limoblife/toolbox/full/g/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Limoblife/toolbox/full/g/c;->b:Limoblife/toolbox/full/g/c;

    :cond_0
    sget-object v0, Limoblife/toolbox/full/g/c;->b:Limoblife/toolbox/full/g/c;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Limoblife/toolbox/full/g/c;->a:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "command_request_memory"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sput-object v0, Limoblife/toolbox/full/g/c;->a:Landroid/app/PendingIntent;

    :cond_0
    sget-object v0, Limoblife/toolbox/full/g/c;->a:Landroid/app/PendingIntent;

    return-object v0
.end method


# virtual methods
.method public final a(JJ)V
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/g/c;->c:Limoblife/toolbox/full/it/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/g/c;->c:Limoblife/toolbox/full/it/b;

    invoke-interface {v0, p1, p2, p3, p4}, Limoblife/toolbox/full/it/b;->a(JJ)V

    :cond_0
    return-void
.end method

.method public final a(Limoblife/toolbox/full/it/b;)V
    .locals 0

    iput-object p1, p0, Limoblife/toolbox/full/g/c;->c:Limoblife/toolbox/full/it/b;

    return-void
.end method
