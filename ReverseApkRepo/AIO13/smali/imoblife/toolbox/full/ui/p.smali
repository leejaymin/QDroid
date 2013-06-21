.class public final Limoblife/toolbox/full/ui/p;
.super Ljava/lang/Object;


# instance fields
.field a:J

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Landroid/graphics/drawable/Drawable;

.field e:Ljava/lang/String;

.field final synthetic f:Limoblife/toolbox/full/ui/ACache;


# direct methods
.method public constructor <init>(Limoblife/toolbox/full/ui/ACache;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    iput-object p1, p0, Limoblife/toolbox/full/ui/p;->f:Limoblife/toolbox/full/ui/ACache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Limoblife/toolbox/full/ui/p;->d:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Limoblife/toolbox/full/ui/p;->c:Ljava/lang/String;

    iput-object p4, p0, Limoblife/toolbox/full/ui/p;->b:Ljava/lang/String;

    iput-wide p5, p0, Limoblife/toolbox/full/ui/p;->a:J

    invoke-static {}, Lutil/a/a;->a()Lutil/a/a;

    invoke-static {p5, p6}, Lutil/a/a;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Limoblife/toolbox/full/ui/p;->e:Ljava/lang/String;

    return-void
.end method
