.class Lcom/ui/LapseIt/list/ListTreeAdapter$GroupContentRenderer;
.super Ljava/lang/Object;
.source "ListTreeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/list/ListTreeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupContentRenderer"
.end annotation


# instance fields
.field dateLine:Landroid/widget/TextView;

.field firstLine:Landroid/widget/TextView;

.field imageContainer:Lpl/polidea/imagemanager/ManagedImageView;

.field secLine:Landroid/widget/TextView;

.field thirdLine:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/ui/LapseIt/list/ListTreeAdapter;


# direct methods
.method private constructor <init>(Lcom/ui/LapseIt/list/ListTreeAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/ui/LapseIt/list/ListTreeAdapter$GroupContentRenderer;->this$0:Lcom/ui/LapseIt/list/ListTreeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ui/LapseIt/list/ListTreeAdapter;Lcom/ui/LapseIt/list/ListTreeAdapter$GroupContentRenderer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 358
    invoke-direct {p0, p1}, Lcom/ui/LapseIt/list/ListTreeAdapter$GroupContentRenderer;-><init>(Lcom/ui/LapseIt/list/ListTreeAdapter;)V

    return-void
.end method
