.class Lcom/stericson/RootTools/InternalMethods$5;
.super Lcom/stericson/RootTools/Command;
.source "InternalMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/RootTools/InternalMethods;->isAccessGiven()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method varargs constructor <init>(I[Ljava/lang/String;)V
    .locals 0
    .parameter "$anonymous0"
    .parameter "$anonymous1"

    .prologue
    .line 731
    invoke-direct {p0, p1, p2}, Lcom/stericson/RootTools/Command;-><init>(I[Ljava/lang/String;)V

    .line 1
    return-void
.end method


# virtual methods
.method public output(ILjava/lang/String;)V
    .locals 5
    .parameter "id"
    .parameter "line"

    .prologue
    .line 736
    sget v2, Lcom/stericson/RootTools/InternalVariables;->IAG:I

    if-ne p1, v2, :cond_1

    .line 738
    new-instance v0, Ljava/util/HashSet;

    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 739
    .local v0, ID:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 748
    :goto_0
    sget-boolean v2, Lcom/stericson/RootTools/InternalVariables;->accessGiven:Z

    if-nez v2, :cond_1

    .line 749
    const-string v2, "Access Denied?"

    invoke-static {v2}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 752
    .end local v0           #ID:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    return-void

    .line 739
    .restart local v0       #ID:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 740
    .local v1, userid:Ljava/lang/String;
    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 742
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "uid=0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 743
    const/4 v2, 0x1

    sput-boolean v2, Lcom/stericson/RootTools/InternalVariables;->accessGiven:Z

    .line 744
    const-string v2, "Access Given"

    invoke-static {v2}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
