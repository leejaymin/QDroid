.class Lcom/ui/LapseIt/project/TrimView$1;
.super Ljava/lang/Object;
.source "TrimView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/project/TrimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/project/TrimView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/project/TrimView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/project/TrimView$1;->this$0:Lcom/ui/LapseIt/project/TrimView;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    .line 140
    const/4 v3, 0x6

    if-eq p2, v3, :cond_0

    .line 141
    if-nez p2, :cond_3

    .line 142
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x42

    if-ne v3, v4, :cond_3

    .line 144
    :cond_0
    iget-object v3, p0, Lcom/ui/LapseIt/project/TrimView$1;->this$0:Lcom/ui/LapseIt/project/TrimView;

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Lcom/ui/LapseIt/project/TrimView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 145
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 147
    invoke-virtual {p1}, Landroid/widget/TextView;->clearFocus()V

    .line 149
    const/4 v0, 0x0

    .line 151
    .local v0, checkedValue:I
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 158
    :goto_0
    if-nez v0, :cond_1

    .line 159
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 170
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 189
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/ui/LapseIt/project/TrimView$1;->this$0:Lcom/ui/LapseIt/project/TrimView;

    #getter for: Lcom/ui/LapseIt/project/TrimView;->trimWidget:Lcom/ui/LapseIt/project/TrimWidget;
    invoke-static {v3}, Lcom/ui/LapseIt/project/TrimView;->access$0(Lcom/ui/LapseIt/project/TrimView;)Lcom/ui/LapseIt/project/TrimWidget;

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Lcom/ui/LapseIt/project/TrimWidget;->getBitmapInFrame(I)Landroid/graphics/Bitmap;

    .line 191
    iget-object v3, p0, Lcom/ui/LapseIt/project/TrimView$1;->this$0:Lcom/ui/LapseIt/project/TrimView;

    #getter for: Lcom/ui/LapseIt/project/TrimView;->contentView:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/ui/LapseIt/project/TrimView;->access$1(Lcom/ui/LapseIt/project/TrimView;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->requestFocus()Z

    .line 193
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    invoke-static {p1, v0}, Lcom/ui/LapseIt/project/TrimWidget;->moveTrimSlider(Landroid/view/View;I)V

    .line 198
    .end local v0           #checkedValue:I
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    return v5

    .line 152
    .restart local v0       #checkedValue:I
    .restart local v2       #imm:Landroid/view/inputmethod/InputMethodManager;
    :catch_0
    move-exception v1

    .line 153
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    const-string v3, "trace"

    const-string v4, "No value for intervals"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 161
    .end local v1           #e:Ljava/lang/Exception;
    :pswitch_0
    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->getStartFrame()I

    goto :goto_1

    .line 165
    :pswitch_1
    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->getEndFrame()I

    goto :goto_1

    .line 173
    :pswitch_2
    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->getEndFrame()I

    move-result v3

    if-le v0, v3, :cond_4

    .line 174
    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->getEndFrame()I

    move-result v0

    goto :goto_2

    .line 175
    :cond_4
    if-gtz v0, :cond_2

    .line 176
    const/4 v0, 0x1

    .line 178
    goto :goto_2

    .line 181
    :pswitch_3
    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->getStartFrame()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ge v0, v3, :cond_5

    .line 182
    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->getStartFrame()I

    move-result v3

    add-int/lit8 v0, v3, 0x1

    goto :goto_2

    .line 183
    :cond_5
    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->getTotalFrames()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-le v0, v3, :cond_2

    .line 184
    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->getTotalFrames()I

    move-result v3

    add-int/lit8 v0, v3, 0x1

    goto :goto_2

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b009b
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 170
    :pswitch_data_1
    .packed-switch 0x7f0b009b
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
