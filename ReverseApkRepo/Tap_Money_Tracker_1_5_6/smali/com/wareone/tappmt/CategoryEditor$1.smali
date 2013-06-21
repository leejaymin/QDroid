.class Lcom/wareone/tappmt/CategoryEditor$1;
.super Ljava/lang/Object;
.source "CategoryEditor.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/CategoryEditor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/CategoryEditor;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/CategoryEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/CategoryEditor$1;->this$0:Lcom/wareone/tappmt/CategoryEditor;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "v"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/wareone/tappmt/CategoryEditor$1;->this$0:Lcom/wareone/tappmt/CategoryEditor;

    #getter for: Lcom/wareone/tappmt/CategoryEditor;->m_values:Landroid/content/ContentValues;
    invoke-static {v0}, Lcom/wareone/tappmt/CategoryEditor;->access$0(Lcom/wareone/tappmt/CategoryEditor;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "sub_of"

    iget-object v2, p0, Lcom/wareone/tappmt/CategoryEditor$1;->this$0:Lcom/wareone/tappmt/CategoryEditor;

    const-string v3, "_id"

    #calls: Lcom/wareone/tappmt/CategoryEditor;->_getList(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v2, v3}, Lcom/wareone/tappmt/CategoryEditor;->access$1(Lcom/wareone/tappmt/CategoryEditor;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/wareone/tappmt/CategoryEditor$1;->this$0:Lcom/wareone/tappmt/CategoryEditor;

    const-string v1, "Nothing Selected"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 78
    return-void
.end method
