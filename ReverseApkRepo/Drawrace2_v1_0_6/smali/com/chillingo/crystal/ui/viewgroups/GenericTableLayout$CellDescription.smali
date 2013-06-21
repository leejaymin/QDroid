.class Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$CellDescription;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellDescription"
.end annotation


# instance fields
.field public frame:Landroid/graphics/Rect;

.field public themeDescription:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

.field final synthetic this$0:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

.field public uiElement:Lcom/chillingo/crystal/serverdata/UIElement;


# direct methods
.method public constructor <init>(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;Landroid/graphics/Rect;Lcom/chillingo/crystal/ui/theming/ThemeDescription;Lcom/chillingo/crystal/serverdata/UIElement;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$CellDescription;->this$0:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$CellDescription;->frame:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$CellDescription;->themeDescription:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    iput-object p4, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$CellDescription;->uiElement:Lcom/chillingo/crystal/serverdata/UIElement;

    return-void
.end method
