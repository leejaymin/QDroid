.class Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter$1;
.super Ljava/lang/Object;
.source "ThreadDeleteAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter;

.field private final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter$1;->this$0:Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter;

    iput p2, p0, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter$1;->val$id:I

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter$1;->this$0:Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter;

    #getter for: Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter;->_mapCheckBoxStatus:Ljava/util/Map;
    invoke-static {v0}, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter;->access$0(Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter$1;->val$id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter$1;->this$0:Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter;

    #getter for: Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter;->_mapCheckBoxStatus:Ljava/util/Map;
    invoke-static {v2}, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter;->access$0(Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter;)Ljava/util/Map;

    move-result-object v2

    iget v3, p0, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter$1;->val$id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    return-void

    .line 133
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
