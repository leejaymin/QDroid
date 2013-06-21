.class Lexam/Network/JSONObjectTest$1;
.super Ljava/lang/Object;
.source "JSONObjectTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/Network/JSONObjectTest;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Network/JSONObjectTest;


# direct methods
.method constructor <init>(Lexam/Network/JSONObjectTest;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Network/JSONObjectTest$1;->this$0:Lexam/Network/JSONObjectTest;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    .line 23
    const-string v0, "[{\"Product\":\"Mouse\", \"Maker\":\"Samsung\", \"Price\":23000},{\"Product\":\"KeyBoard\", \"Maker\":\"LG\", \"Price\":12000},{\"Product\":\"HDD\", \"Maker\":\"Western Digital\", \"Price\":156000}]"

    .line 27
    .local v0, Json:Ljava/lang/String;
    :try_start_0
    const-string v1, "\uc8fc\ubb38 \ubaa9\ub85d\n"

    .line 28
    .local v1, Result:Ljava/lang/String;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 29
    .local v4, ja:Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v3, v6, :cond_0

    .line 35
    iget-object v6, p0, Lexam/Network/JSONObjectTest$1;->this$0:Lexam/Network/JSONObjectTest;

    iget-object v6, v6, Lexam/Network/JSONObjectTest;->mResult:Landroid/widget/EditText;

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .end local v1           #Result:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #ja:Lorg/json/JSONArray;
    :goto_1
    return-void

    .line 30
    .restart local v1       #Result:Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v4       #ja:Lorg/json/JSONArray;
    :cond_0
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 31
    .local v5, order:Lorg/json/JSONObject;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\uc81c\ud488\uba85:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Product"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 32
    const-string v7, ",\uc81c\uc870\uc0ac:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Maker"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 33
    const-string v7, ",\uac00\uaca9"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Price"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 31
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 29
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 36
    .end local v1           #Result:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #ja:Lorg/json/JSONArray;
    .end local v5           #order:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 37
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
