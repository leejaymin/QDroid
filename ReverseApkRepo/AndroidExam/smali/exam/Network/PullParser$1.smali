.class Lexam/Network/PullParser$1;
.super Ljava/lang/Object;
.source "PullParser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/Network/PullParser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Network/PullParser;


# direct methods
.method constructor <init>(Lexam/Network/PullParser;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Network/PullParser$1;->this$0:Lexam/Network/PullParser;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    .line 25
    const-string v6, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<order><item>Mouse</item></order>"

    .line 27
    .local v6, xml:Ljava/lang/String;
    const/4 v4, 0x0

    .line 28
    .local v4, initem:Z
    const-string v0, ""

    .line 31
    .local v0, ItemName:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 32
    .local v3, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 33
    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 35
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 36
    .local v2, eventType:I
    :goto_0
    const/4 v7, 0x1

    if-ne v2, v7, :cond_0

    .line 58
    iget-object v7, p0, Lexam/Network/PullParser$1;->this$0:Lexam/Network/PullParser;

    iget-object v7, v7, Lexam/Network/PullParser;->mResult:Landroid/widget/EditText;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\uc8fc\ubb38 \ud56d\ubaa9 : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .end local v2           #eventType:I
    .end local v3           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :goto_1
    return-void

    .line 37
    .restart local v2       #eventType:I
    .restart local v3       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    packed-switch v2, :pswitch_data_0

    .line 56
    :cond_1
    :goto_2
    :pswitch_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 43
    :pswitch_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "item"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 44
    const/4 v4, 0x1

    .line 46
    goto :goto_2

    .line 50
    :pswitch_2
    if-eqz v4, :cond_1

    .line 51
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 52
    const/4 v4, 0x0

    goto :goto_2

    .line 60
    .end local v2           #eventType:I
    .end local v3           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v1

    .line 61
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
