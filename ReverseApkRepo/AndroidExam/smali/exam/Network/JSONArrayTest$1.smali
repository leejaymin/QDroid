.class Lexam/Network/JSONArrayTest$1;
.super Ljava/lang/Object;
.source "JSONArrayTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/Network/JSONArrayTest;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Network/JSONArrayTest;


# direct methods
.method constructor <init>(Lexam/Network/JSONArrayTest;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Network/JSONArrayTest$1;->this$0:Lexam/Network/JSONArrayTest;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 23
    const-string v0, "[8,9,6,2,9]"

    .line 25
    .local v0, Json:Ljava/lang/String;
    const/4 v4, 0x0

    .line 26
    .local v4, sum:I
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 27
    .local v3, ja:Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v2, v5, :cond_0

    .line 30
    iget-object v5, p0, Lexam/Network/JSONArrayTest$1;->this$0:Lexam/Network/JSONArrayTest;

    iget-object v5, v5, Lexam/Network/JSONArrayTest;->mResult:Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Sum = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .end local v2           #i:I
    .end local v3           #ja:Lorg/json/JSONArray;
    :goto_1
    return-void

    .line 28
    .restart local v2       #i:I
    .restart local v3       #ja:Lorg/json/JSONArray;
    :cond_0
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getInt(I)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    add-int/2addr v4, v5

    .line 27
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 31
    .end local v2           #i:I
    .end local v3           #ja:Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 32
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
