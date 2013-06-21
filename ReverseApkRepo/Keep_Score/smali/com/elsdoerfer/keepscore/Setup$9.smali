.class Lcom/elsdoerfer/keepscore/Setup$9;
.super Ljava/lang/Object;
.source "Setup.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elsdoerfer/keepscore/Setup;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elsdoerfer/keepscore/Setup;

.field private final synthetic val$info:Landroid/widget/AdapterView$AdapterContextMenuInfo;


# direct methods
.method constructor <init>(Lcom/elsdoerfer/keepscore/Setup;Landroid/widget/AdapterView$AdapterContextMenuInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/elsdoerfer/keepscore/Setup$9;->this$0:Lcom/elsdoerfer/keepscore/Setup;

    iput-object p2, p0, Lcom/elsdoerfer/keepscore/Setup$9;->val$info:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/Setup$9;->this$0:Lcom/elsdoerfer/keepscore/Setup;

    iget-object v1, p0, Lcom/elsdoerfer/keepscore/Setup$9;->val$info:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-wide v1, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/elsdoerfer/keepscore/Setup;->continueSession(J)V

    .line 317
    const/4 v0, 0x1

    return v0
.end method
