.class Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider$1;
.super Ljava/lang/Object;
.source "ProjectsContentProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider;->deleteDirectoriesOnList(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider;

.field private final synthetic val$listToDelete:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider$1;->this$0:Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider;

    iput-object p2, p0, Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider$1;->val$listToDelete:Ljava/util/ArrayList;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 248
    iget-object v1, p0, Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider$1;->val$listToDelete:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 251
    return-void

    .line 248
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 249
    .local v0, fileToDelete:Ljava/io/File;
    invoke-static {v0}, Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider;->deleteRecursive(Ljava/io/File;)V

    goto :goto_0
.end method
