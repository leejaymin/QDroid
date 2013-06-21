.class Lvn/esse/bodysymbol/HomeActivity$18;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvn/esse/bodysymbol/HomeActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvn/esse/bodysymbol/HomeActivity;

.field private final synthetic val$charPreview:Landroid/widget/ImageView;

.field private final synthetic val$charac:Landroid/widget/EditText;

.field private final synthetic val$charsize:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lvn/esse/bodysymbol/HomeActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lvn/esse/bodysymbol/HomeActivity$18;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iput-object p2, p0, Lvn/esse/bodysymbol/HomeActivity$18;->val$charsize:Landroid/widget/EditText;

    iput-object p3, p0, Lvn/esse/bodysymbol/HomeActivity$18;->val$charac:Landroid/widget/EditText;

    iput-object p4, p0, Lvn/esse/bodysymbol/HomeActivity$18;->val$charPreview:Landroid/widget/ImageView;

    .line 843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 848
    iget-object v3, p0, Lvn/esse/bodysymbol/HomeActivity$18;->val$charsize:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 849
    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 850
    .local v1, stCharSize:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 864
    :cond_0
    :goto_0
    return-void

    .line 853
    :cond_1
    iget-object v3, p0, Lvn/esse/bodysymbol/HomeActivity$18;->val$charac:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 854
    .local v0, charSymbol:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 857
    iget-object v3, p0, Lvn/esse/bodysymbol/HomeActivity$18;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    .line 859
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 857
    #calls: Lvn/esse/bodysymbol/HomeActivity;->createSymbolFromChar(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    invoke-static {v3, v0, v4}, Lvn/esse/bodysymbol/HomeActivity;->access$6(Lvn/esse/bodysymbol/HomeActivity;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 860
    .local v2, tmpBitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lvn/esse/bodysymbol/HomeActivity$18;->val$charPreview:Landroid/widget/ImageView;

    .line 861
    const/16 v4, 0x50

    const/16 v5, 0x78

    .line 862
    const/4 v6, 0x0

    .line 861
    invoke-static {v2, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 860
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
