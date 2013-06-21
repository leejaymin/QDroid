.class Lcom/superdroid/sqd/adapter/SmsDeleteAdapter$1;
.super Ljava/lang/Object;
.source "SmsDeleteAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superdroid/sqd/adapter/SmsDeleteAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/superdroid/sqd/adapter/SmsDeleteAdapter;

.field private final synthetic val$key:Lcom/superdroid/sqd/data/IdType;


# direct methods
.method constructor <init>(Lcom/superdroid/sqd/adapter/SmsDeleteAdapter;Lcom/superdroid/sqd/data/IdType;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/superdroid/sqd/adapter/SmsDeleteAdapter$1;->this$0:Lcom/superdroid/sqd/adapter/SmsDeleteAdapter;

    iput-object p2, p0, Lcom/superdroid/sqd/adapter/SmsDeleteAdapter$1;->val$key:Lcom/superdroid/sqd/data/IdType;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/superdroid/sqd/adapter/SmsDeleteAdapter$1;->this$0:Lcom/superdroid/sqd/adapter/SmsDeleteAdapter;

    #getter for: Lcom/superdroid/sqd/adapter/SmsDeleteAdapter;->_mapCheckBoxStatus:Ljava/util/Map;
    invoke-static {v0}, Lcom/superdroid/sqd/adapter/SmsDeleteAdapter;->access$0(Lcom/superdroid/sqd/adapter/SmsDeleteAdapter;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/superdroid/sqd/adapter/SmsDeleteAdapter$1;->val$key:Lcom/superdroid/sqd/data/IdType;

    iget-object v2, p0, Lcom/superdroid/sqd/adapter/SmsDeleteAdapter$1;->this$0:Lcom/superdroid/sqd/adapter/SmsDeleteAdapter;

    #getter for: Lcom/superdroid/sqd/adapter/SmsDeleteAdapter;->_mapCheckBoxStatus:Ljava/util/Map;
    invoke-static {v2}, Lcom/superdroid/sqd/adapter/SmsDeleteAdapter;->access$0(Lcom/superdroid/sqd/adapter/SmsDeleteAdapter;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/superdroid/sqd/adapter/SmsDeleteAdapter$1;->val$key:Lcom/superdroid/sqd/data/IdType;

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

    .line 93
    return-void

    .line 92
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
