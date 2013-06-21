.class Lcom/chillingo/crystal/ui/theming/Theming$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/crystal/ui/theming/Theming;->setCurrentThemeFromResourceInBackground(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/chillingo/crystal/ThemingDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chillingo/crystal/ui/theming/Theming;

.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$d:Lcom/chillingo/crystal/ThemingDelegate;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$themeName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/chillingo/crystal/ui/theming/Theming;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/chillingo/crystal/ThemingDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/ui/theming/Theming$1;->this$0:Lcom/chillingo/crystal/ui/theming/Theming;

    iput-object p2, p0, Lcom/chillingo/crystal/ui/theming/Theming$1;->val$themeName:Ljava/lang/String;

    iput-object p3, p0, Lcom/chillingo/crystal/ui/theming/Theming$1;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/chillingo/crystal/ui/theming/Theming$1;->val$c:Landroid/content/Context;

    iput-object p5, p0, Lcom/chillingo/crystal/ui/theming/Theming$1;->val$d:Lcom/chillingo/crystal/ThemingDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/Theming$1;->this$0:Lcom/chillingo/crystal/ui/theming/Theming;

    iget-object v1, p0, Lcom/chillingo/crystal/ui/theming/Theming$1;->val$themeName:Ljava/lang/String;

    iget-object v2, p0, Lcom/chillingo/crystal/ui/theming/Theming$1;->val$packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/chillingo/crystal/ui/theming/Theming$1;->val$c:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3}, Lcom/chillingo/crystal/ui/theming/Theming;->setCurrentThemeFromResource(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/theming/Theming$1;->val$d:Lcom/chillingo/crystal/ThemingDelegate;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/theming/Theming$1;->val$d:Lcom/chillingo/crystal/ThemingDelegate;

    invoke-interface {v1, v0}, Lcom/chillingo/crystal/ThemingDelegate;->ThemeUnzipped(I)V

    :cond_0
    return-void
.end method
