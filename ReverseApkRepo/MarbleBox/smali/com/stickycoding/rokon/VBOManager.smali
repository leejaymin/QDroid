.class public Lcom/stickycoding/rokon/VBOManager;
.super Ljava/lang/Object;
.source "VBOManager.java"


# static fields
.field protected static list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/stickycoding/rokon/vbo/VBO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/stickycoding/rokon/VBOManager;->list:Ljava/util/ArrayList;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Lcom/stickycoding/rokon/vbo/VBO;)V
    .locals 1
    .parameter "vbo"

    .prologue
    .line 25
    const-string v0, "VBO loaded"

    invoke-static {v0}, Lcom/stickycoding/rokon/Debug;->print(Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/stickycoding/rokon/VBOManager;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method

.method protected static removeVBOs()V
    .locals 2

    .prologue
    .line 30
    const-string v1, "Removing VBOs"

    invoke-static {v1}, Lcom/stickycoding/rokon/Debug;->warning(Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/stickycoding/rokon/VBOManager;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 34
    sget-object v1, Lcom/stickycoding/rokon/VBOManager;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 35
    return-void

    .line 32
    :cond_0
    sget-object v1, Lcom/stickycoding/rokon/VBOManager;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stickycoding/rokon/vbo/VBO;

    invoke-virtual {v1}, Lcom/stickycoding/rokon/vbo/VBO;->setUnloaded()V

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
