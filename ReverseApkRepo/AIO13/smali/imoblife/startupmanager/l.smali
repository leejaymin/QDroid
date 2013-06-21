.class final Limoblife/startupmanager/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Limoblife/startupmanager/ManagerUtil;


# direct methods
.method constructor <init>(Limoblife/startupmanager/ManagerUtil;)V
    .locals 0

    iput-object p1, p0, Limoblife/startupmanager/l;->a:Limoblife/startupmanager/ManagerUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Limoblife/startupmanager/j;

    check-cast p2, Limoblife/startupmanager/j;

    iget-boolean v0, p1, Limoblife/startupmanager/j;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Limoblife/startupmanager/j;->b:Z

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p1, Limoblife/startupmanager/j;->b:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p2, Limoblife/startupmanager/j;->b:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iget-object v1, p1, Limoblife/startupmanager/j;->d:Ljava/lang/String;

    iget-object v2, p2, Limoblife/startupmanager/j;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
