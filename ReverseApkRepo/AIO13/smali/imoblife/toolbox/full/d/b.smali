.class public final Limoblife/toolbox/full/d/b;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/app/ActivityManager$RunningAppProcessInfo;

.field public b:J

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Limoblife/toolbox/full/d/b;-><init>(Landroid/app/ActivityManager$RunningAppProcessInfo;JLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/ActivityManager$RunningAppProcessInfo;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Limoblife/toolbox/full/d/b;->a:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iput-wide p2, p0, Limoblife/toolbox/full/d/b;->b:J

    iput-object p4, p0, Limoblife/toolbox/full/d/b;->c:Ljava/lang/String;

    return-void
.end method
