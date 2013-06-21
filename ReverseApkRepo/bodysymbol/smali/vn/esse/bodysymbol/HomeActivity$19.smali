.class Lvn/esse/bodysymbol/HomeActivity$19;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field private final synthetic val$charac:Landroid/widget/EditText;

.field private final synthetic val$charsize:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lvn/esse/bodysymbol/HomeActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lvn/esse/bodysymbol/HomeActivity$19;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iput-object p2, p0, Lvn/esse/bodysymbol/HomeActivity$19;->val$charsize:Landroid/widget/EditText;

    iput-object p3, p0, Lvn/esse/bodysymbol/HomeActivity$19;->val$charac:Landroid/widget/EditText;

    .line 847
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 852
    iget-object v3, p0, Lvn/esse/bodysymbol/HomeActivity$19;->val$charsize:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 853
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 855
    .local v2, stCharSize:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 877
    :cond_0
    :goto_0
    return-void

    .line 858
    :cond_1
    iget-object v3, p0, Lvn/esse/bodysymbol/HomeActivity$19;->val$charac:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 861
    .local v0, charSymbol:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 865
    sput-object v0, Lvn/esse/bodysymbol/HomeActivity;->CHARACTER_SYMBOL:Ljava/lang/String;

    .line 866
    sget-object v3, Lvn/esse/bodysymbol/HomeActivity;->BODY_SYMBOL_FROM_CHARACTER:Ljava/lang/String;

    sput-object v3, Lvn/esse/bodysymbol/HomeActivity;->BODY_SYMBOL:Ljava/lang/String;

    .line 867
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lvn/esse/bodysymbol/HomeActivity;->CHARACTER_SYMBOL_SIZE:I

    .line 868
    iget-object v3, p0, Lvn/esse/bodysymbol/HomeActivity$19;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iget-object v3, v3, Lvn/esse/bodysymbol/HomeActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 869
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    const-string v3, "BODY_SYMBOL"

    sget-object v4, Lvn/esse/bodysymbol/HomeActivity;->BODY_SYMBOL:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 870
    const-string v3, "CHARACTER"

    sget-object v4, Lvn/esse/bodysymbol/HomeActivity;->CHARACTER_SYMBOL:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 871
    const-string v3, "CHARACTER_SIZE"

    sget v4, Lvn/esse/bodysymbol/HomeActivity;->CHARACTER_SYMBOL_SIZE:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 872
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 873
    iget-object v3, p0, Lvn/esse/bodysymbol/HomeActivity$19;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    sget-object v4, Lvn/esse/bodysymbol/HomeActivity;->BODY_SYMBOL:Ljava/lang/String;

    #calls: Lvn/esse/bodysymbol/HomeActivity;->updateSymbolBitmap(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lvn/esse/bodysymbol/HomeActivity;->access$3(Lvn/esse/bodysymbol/HomeActivity;Ljava/lang/String;)V

    .line 874
    iget-object v3, p0, Lvn/esse/bodysymbol/HomeActivity$19;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    sget-object v4, Lvn/esse/bodysymbol/HomeActivity;->BODY_SYMBOL:Ljava/lang/String;

    #calls: Lvn/esse/bodysymbol/HomeActivity;->onResetPerform(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lvn/esse/bodysymbol/HomeActivity;->access$4(Lvn/esse/bodysymbol/HomeActivity;Ljava/lang/String;)V

    .line 875
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
