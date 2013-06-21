.class Lcom/jellybus/fx/Activity_Filter$1;
.super Ljava/lang/Object;
.source "Activity_Filter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Filter;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Filter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Filter$1;->this$0:Lcom/jellybus/fx/Activity_Filter;

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter$1;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Filter;->access$0(Lcom/jellybus/fx/Activity_Filter;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isFilterFirst"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 353
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter$1;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Filter;->access$0(Lcom/jellybus/fx/Activity_Filter;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 355
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter$1;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filter_info:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Filter;->access$1(Lcom/jellybus/fx/Activity_Filter;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 356
    return-void
.end method
