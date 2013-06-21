.class final Limoblife/toolbox/full/ui/af;
.super Ljava/lang/Object;

# interfaces
.implements Limoblife/toolbox/full/d/c;


# instance fields
.field final synthetic a:Limoblife/toolbox/full/ui/ae;


# direct methods
.method constructor <init>(Limoblife/toolbox/full/ui/ae;)V
    .locals 0

    iput-object p1, p0, Limoblife/toolbox/full/ui/af;->a:Limoblife/toolbox/full/ui/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;JJ)V
    .locals 3

    iget-object v0, p0, Limoblife/toolbox/full/ui/af;->a:Limoblife/toolbox/full/ui/ae;

    invoke-static {v0, p2, p3}, Limoblife/toolbox/full/ui/ae;->a(Limoblife/toolbox/full/ui/ae;J)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/af;->a:Limoblife/toolbox/full/ui/ae;

    invoke-static {v0, p4, p5}, Limoblife/toolbox/full/ui/ae;->b(Limoblife/toolbox/full/ui/ae;J)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/af;->a:Limoblife/toolbox/full/ui/ae;

    iget-object v1, p0, Limoblife/toolbox/full/ui/af;->a:Limoblife/toolbox/full/ui/ae;

    invoke-static {v1}, Limoblife/toolbox/full/ui/ae;->a(Limoblife/toolbox/full/ui/ae;)J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Limoblife/toolbox/full/ui/ae;->a(Limoblife/toolbox/full/ui/ae;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Limoblife/toolbox/full/d/b;)V
    .locals 0

    return-void
.end method
