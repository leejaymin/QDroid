.class Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire$WAKey;
.super Landroid/inputmethodservice/Keyboard$Key;
.source "WAKeyboard_kindlefire.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WAKey"
.end annotation


# static fields
.field public static belongstoLowerKeyboard:Z


# instance fields
.field private isShiftKey:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V
    .locals 0
    .parameter "res"
    .parameter "parent"
    .parameter "x"
    .parameter "y"
    .parameter "parser"

    .prologue
    .line 748
    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    .line 755
    return-void
.end method


# virtual methods
.method public onPressed()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, 0x7f020095

    const v4, 0x7f020092

    .line 765
    invoke-static {}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->access$000()Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v1

    const v2, 0x7f050003

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 766
    .local v0, tv:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire$WAKey;->codes:[I

    aget v1, v1, v6

    sparse-switch v1, :sswitch_data_0

    .line 832
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire$WAKey;->codes:[I

    invoke-static {}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->access$200()F

    move-result v2

    iget v3, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire$WAKey;->width:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->access$200()F

    move-result v3

    iget v4, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire$WAKey;->height:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v1, v2, v3, v0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->keyboard_icon_drawable([IIILandroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire$WAKey;->icon:Landroid/graphics/drawable/Drawable;

    .line 833
    return-void

    .line 770
    :sswitch_0
    invoke-static {}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->access$100()Lcom/wolfram/android/alpha/Resources_modified;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 772
    :sswitch_1
    invoke-static {}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->access$100()Lcom/wolfram/android/alpha/Resources_modified;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 774
    :sswitch_2
    sget v1, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftState:I

    if-nez v1, :cond_1

    sput v7, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftState:I

    .line 775
    :cond_1
    invoke-static {}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->access$100()Lcom/wolfram/android/alpha/Resources_modified;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 777
    :sswitch_3
    invoke-static {}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->access$100()Lcom/wolfram/android/alpha/Resources_modified;

    move-result-object v1

    const v2, 0x7f020096

    invoke-virtual {v1, v2}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 779
    :sswitch_4
    invoke-static {}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->access$100()Lcom/wolfram/android/alpha/Resources_modified;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 784
    :sswitch_5
    invoke-static {}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->access$100()Lcom/wolfram/android/alpha/Resources_modified;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 786
    :sswitch_6
    invoke-static {}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->access$100()Lcom/wolfram/android/alpha/Resources_modified;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 791
    :sswitch_7
    invoke-static {}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->access$100()Lcom/wolfram/android/alpha/Resources_modified;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 793
    :sswitch_8
    invoke-static {}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->access$100()Lcom/wolfram/android/alpha/Resources_modified;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 798
    :sswitch_9
    invoke-static {}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->access$100()Lcom/wolfram/android/alpha/Resources_modified;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 799
    sget v1, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftState:I

    if-ne v1, v7, :cond_0

    sput v6, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftState:I

    goto/16 :goto_0

    .line 802
    :sswitch_a
    sget v1, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftState:I

    if-ne v1, v8, :cond_2

    sput v6, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftState:I

    .line 803
    :cond_2
    sget v1, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftState:I

    if-ne v1, v7, :cond_3

    sput v8, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftState:I

    .line 804
    :cond_3
    invoke-static {}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->access$100()Lcom/wolfram/android/alpha/Resources_modified;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 811
    :sswitch_b
    invoke-static {}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->access$100()Lcom/wolfram/android/alpha/Resources_modified;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 813
    :sswitch_c
    invoke-static {}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->access$100()Lcom/wolfram/android/alpha/Resources_modified;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 819
    :sswitch_d
    invoke-static {}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->access$100()Lcom/wolfram/android/alpha/Resources_modified;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 821
    :sswitch_e
    invoke-static {}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->access$100()Lcom/wolfram/android/alpha/Resources_modified;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 827
    :sswitch_f
    invoke-static {}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->access$100()Lcom/wolfram/android/alpha/Resources_modified;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 829
    :sswitch_10
    invoke-static {}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->access$100()Lcom/wolfram/android/alpha/Resources_modified;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 766
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_3
        0x43 -> :sswitch_1
        0x2724 -> :sswitch_e
        0x272e -> :sswitch_10
        0xf800 -> :sswitch_0
        0xf801 -> :sswitch_0
        0xf802 -> :sswitch_0
        0xf803 -> :sswitch_0
        0xf804 -> :sswitch_0
        0xf805 -> :sswitch_0
        0xf806 -> :sswitch_0
        0xf807 -> :sswitch_0
        0xf808 -> :sswitch_0
        0xf809 -> :sswitch_0
        0xf810 -> :sswitch_0
        0xf811 -> :sswitch_0
        0xf812 -> :sswitch_0
        0xf813 -> :sswitch_0
        0xf814 -> :sswitch_0
        0xf815 -> :sswitch_0
        0xf816 -> :sswitch_0
        0xf817 -> :sswitch_0
        0xf818 -> :sswitch_0
        0xf819 -> :sswitch_0
        0xf820 -> :sswitch_0
        0xf821 -> :sswitch_0
        0xf822 -> :sswitch_0
        0xf823 -> :sswitch_0
        0xf824 -> :sswitch_0
        0xf825 -> :sswitch_0
        0xf826 -> :sswitch_9
        0xf827 -> :sswitch_9
        0xf828 -> :sswitch_9
        0xf829 -> :sswitch_9
        0xf830 -> :sswitch_9
        0xf831 -> :sswitch_9
        0xf832 -> :sswitch_9
        0xf833 -> :sswitch_9
        0xf834 -> :sswitch_9
        0xf835 -> :sswitch_9
        0xf836 -> :sswitch_9
        0xf837 -> :sswitch_9
        0xf838 -> :sswitch_9
        0xf839 -> :sswitch_9
        0xf840 -> :sswitch_9
        0xf841 -> :sswitch_9
        0xf842 -> :sswitch_9
        0xf843 -> :sswitch_9
        0xf844 -> :sswitch_9
        0xf845 -> :sswitch_9
        0xf846 -> :sswitch_9
        0xf847 -> :sswitch_9
        0xf848 -> :sswitch_9
        0xf849 -> :sswitch_9
        0xf850 -> :sswitch_9
        0xf851 -> :sswitch_9
        0xf852 -> :sswitch_5
        0xf853 -> :sswitch_5
        0xf854 -> :sswitch_5
        0xf855 -> :sswitch_5
        0xf856 -> :sswitch_5
        0xf857 -> :sswitch_5
        0xf858 -> :sswitch_5
        0xf859 -> :sswitch_5
        0xf860 -> :sswitch_5
        0xf861 -> :sswitch_5
        0xf862 -> :sswitch_5
        0xf863 -> :sswitch_5
        0xf864 -> :sswitch_5
        0xf865 -> :sswitch_5
        0xf866 -> :sswitch_5
        0xf867 -> :sswitch_5
        0xf868 -> :sswitch_5
        0xf869 -> :sswitch_5
        0xf870 -> :sswitch_5
        0xf871 -> :sswitch_5
        0xf872 -> :sswitch_5
        0xf873 -> :sswitch_5
        0xf874 -> :sswitch_5
        0xf875 -> :sswitch_5
        0xf876 -> :sswitch_5
        0xf877 -> :sswitch_7
        0xf878 -> :sswitch_7
        0xf879 -> :sswitch_7
        0xf880 -> :sswitch_7
        0xf881 -> :sswitch_7
        0xf882 -> :sswitch_7
        0xf883 -> :sswitch_7
        0xf884 -> :sswitch_7
        0xf885 -> :sswitch_7
        0xf886 -> :sswitch_7
        0xf887 -> :sswitch_7
        0xf888 -> :sswitch_7
        0xf889 -> :sswitch_7
        0xf890 -> :sswitch_7
        0xf891 -> :sswitch_7
        0xf892 -> :sswitch_7
        0xf893 -> :sswitch_7
        0xf894 -> :sswitch_7
        0xf895 -> :sswitch_7
        0xf896 -> :sswitch_7
        0xf897 -> :sswitch_4
        0xf898 -> :sswitch_b
        0xf899 -> :sswitch_b
        0xf900 -> :sswitch_b
        0xf901 -> :sswitch_b
        0xf902 -> :sswitch_b
        0xf903 -> :sswitch_b
        0xf904 -> :sswitch_b
        0xf905 -> :sswitch_b
        0xf906 -> :sswitch_b
        0xf907 -> :sswitch_b
        0xf908 -> :sswitch_b
        0xf909 -> :sswitch_b
        0xf910 -> :sswitch_b
        0xf911 -> :sswitch_b
        0xf912 -> :sswitch_b
        0xf913 -> :sswitch_b
        0xf914 -> :sswitch_b
        0xf915 -> :sswitch_b
        0xf916 -> :sswitch_b
        0xf917 -> :sswitch_b
        0xf918 -> :sswitch_b
        0xf919 -> :sswitch_b
        0xf921 -> :sswitch_b
        0xf922 -> :sswitch_b
        0xf923 -> :sswitch_b
        0xf924 -> :sswitch_b
        0xf925 -> :sswitch_b
        0xf926 -> :sswitch_b
        0xf927 -> :sswitch_b
        0xf928 -> :sswitch_b
        0xf929 -> :sswitch_b
        0xf930 -> :sswitch_b
        0xf931 -> :sswitch_b
        0xf932 -> :sswitch_b
        0xf933 -> :sswitch_b
        0xf934 -> :sswitch_b
        0xf935 -> :sswitch_d
        0xf936 -> :sswitch_d
        0xf937 -> :sswitch_d
        0xf938 -> :sswitch_d
        0xf939 -> :sswitch_d
        0xf940 -> :sswitch_d
        0xf941 -> :sswitch_d
        0xf942 -> :sswitch_d
        0xf943 -> :sswitch_d
        0xf944 -> :sswitch_d
        0xf945 -> :sswitch_d
        0xf946 -> :sswitch_d
        0xf947 -> :sswitch_d
        0xf948 -> :sswitch_d
        0xf949 -> :sswitch_d
        0xf950 -> :sswitch_d
        0xf951 -> :sswitch_d
        0xf952 -> :sswitch_d
        0xf953 -> :sswitch_d
        0xf954 -> :sswitch_d
        0xf955 -> :sswitch_d
        0xf956 -> :sswitch_d
        0xf957 -> :sswitch_d
        0xf958 -> :sswitch_d
        0xf959 -> :sswitch_d
        0xf960 -> :sswitch_d
        0xf961 -> :sswitch_d
        0xf962 -> :sswitch_d
        0xf963 -> :sswitch_f
        0xf964 -> :sswitch_f
        0xf965 -> :sswitch_f
        0xf966 -> :sswitch_f
        0xf967 -> :sswitch_f
        0xf968 -> :sswitch_f
        0xf969 -> :sswitch_f
        0xf970 -> :sswitch_f
        0xf971 -> :sswitch_f
        0xf972 -> :sswitch_f
        0xf973 -> :sswitch_f
        0xf974 -> :sswitch_f
        0xf975 -> :sswitch_f
        0xf976 -> :sswitch_f
        0xf977 -> :sswitch_f
        0xf978 -> :sswitch_f
        0xf979 -> :sswitch_f
        0xf980 -> :sswitch_f
        0xf981 -> :sswitch_f
        0xf982 -> :sswitch_f
        0xf983 -> :sswitch_f
        0xf984 -> :sswitch_f
        0xf985 -> :sswitch_f
        0xf986 -> :sswitch_f
        0xf987 -> :sswitch_f
        0xf988 -> :sswitch_f
        0xf989 -> :sswitch_f
        0xf990 -> :sswitch_f
        0x186a0 -> :sswitch_c
        0x186a1 -> :sswitch_c
        0x186a3 -> :sswitch_1
        0x186aa -> :sswitch_1
        0x186ab -> :sswitch_c
        0x186b4 -> :sswitch_6
        0x186b5 -> :sswitch_8
        0x186b9 -> :sswitch_2
        0x186ba -> :sswitch_a
        0xf4256 -> :sswitch_1
    .end sparse-switch
.end method

.method public onReleased(Z)V
    .locals 9
    .parameter "inside"

    .prologue
    const v8, 0x7f020096

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, 0x7f020091

    const v4, 0x7f020094

    .line 840
    invoke-static {}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->access$000()Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v1

    const v2, 0x7f050003

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 841
    .local v0, tv:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire$WAKey;->codes:[I

    aget v1, v1, v6

    sparse-switch v1, :sswitch_data_0

    .line 898
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire$WAKey;->codes:[I

    invoke-static {}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->access$200()F

    move-result v2

    iget v3, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire$WAKey;->width:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->access$200()F

    move-result v3

    iget v4, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire$WAKey;->height:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v1, v2, v3, v0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->keyboard_icon_drawable([IIILandroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire$WAKey;->icon:Landroid/graphics/drawable/Drawable;

    .line 899
    iget-boolean v1, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire$WAKey;->isShiftKey:Z

    if-eqz v1, :cond_4

    .line 900
    iget-boolean v1, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire$WAKey;->pressed:Z

    if-nez v1, :cond_3

    move v1, v7

    :goto_1
    iput-boolean v1, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire$WAKey;->pressed:Z

    .line 904
    :goto_2
    return-void

    .line 845
    :sswitch_0
    invoke-static {}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->access$100()Lcom/wolfram/android/alpha/Resources_modified;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 847
    :sswitch_1
    invoke-static {}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->access$100()Lcom/wolfram/android/alpha/Resources_modified;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 849
    :sswitch_2
    invoke-static {}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->access$100()Lcom/wolfram/android/alpha/Resources_modified;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 851
    :sswitch_3
    invoke-static {}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->access$100()Lcom/wolfram/android/alpha/Resources_modified;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 856
    :sswitch_4
    invoke-static {}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->access$100()Lcom/wolfram/android/alpha/Resources_modified;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 861
    :sswitch_5
    invoke-static {}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->access$100()Lcom/wolfram/android/alpha/Resources_modified;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 866
    :sswitch_6
    invoke-static {}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->access$100()Lcom/wolfram/android/alpha/Resources_modified;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 868
    :sswitch_7
    sget v1, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftState:I

    if-eqz v1, :cond_1

    sget v1, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftState:I

    if-ne v1, v7, :cond_2

    :cond_1
    invoke-static {}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->access$100()Lcom/wolfram/android/alpha/Resources_modified;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 869
    :cond_2
    sget v1, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->access$100()Lcom/wolfram/android/alpha/Resources_modified;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 877
    :sswitch_8
    invoke-static {}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->access$100()Lcom/wolfram/android/alpha/Resources_modified;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 879
    :sswitch_9
    invoke-static {}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->access$100()Lcom/wolfram/android/alpha/Resources_modified;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 885
    :sswitch_a
    invoke-static {}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->access$100()Lcom/wolfram/android/alpha/Resources_modified;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 887
    :sswitch_b
    invoke-static {}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->access$100()Lcom/wolfram/android/alpha/Resources_modified;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 893
    :sswitch_c
    invoke-static {}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->access$100()Lcom/wolfram/android/alpha/Resources_modified;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 895
    :sswitch_d
    invoke-static {}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->access$100()Lcom/wolfram/android/alpha/Resources_modified;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/wolfram/android/alpha/Resources_modified;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_3
    move v1, v6

    .line 900
    goto/16 :goto_1

    .line 902
    :cond_4
    invoke-super {p0, p1}, Landroid/inputmethodservice/Keyboard$Key;->onReleased(Z)V

    goto/16 :goto_2

    .line 841
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_2
        0x43 -> :sswitch_1
        0x2724 -> :sswitch_b
        0x272e -> :sswitch_d
        0xf800 -> :sswitch_0
        0xf801 -> :sswitch_0
        0xf802 -> :sswitch_0
        0xf803 -> :sswitch_0
        0xf804 -> :sswitch_0
        0xf805 -> :sswitch_0
        0xf806 -> :sswitch_0
        0xf807 -> :sswitch_0
        0xf808 -> :sswitch_0
        0xf809 -> :sswitch_0
        0xf810 -> :sswitch_0
        0xf811 -> :sswitch_0
        0xf812 -> :sswitch_0
        0xf813 -> :sswitch_0
        0xf814 -> :sswitch_0
        0xf815 -> :sswitch_0
        0xf816 -> :sswitch_0
        0xf817 -> :sswitch_0
        0xf818 -> :sswitch_0
        0xf819 -> :sswitch_0
        0xf820 -> :sswitch_0
        0xf821 -> :sswitch_0
        0xf822 -> :sswitch_0
        0xf823 -> :sswitch_0
        0xf824 -> :sswitch_0
        0xf825 -> :sswitch_0
        0xf826 -> :sswitch_6
        0xf827 -> :sswitch_6
        0xf828 -> :sswitch_6
        0xf829 -> :sswitch_6
        0xf830 -> :sswitch_6
        0xf831 -> :sswitch_6
        0xf832 -> :sswitch_6
        0xf833 -> :sswitch_6
        0xf834 -> :sswitch_6
        0xf835 -> :sswitch_6
        0xf836 -> :sswitch_6
        0xf837 -> :sswitch_6
        0xf838 -> :sswitch_6
        0xf839 -> :sswitch_6
        0xf840 -> :sswitch_6
        0xf841 -> :sswitch_6
        0xf842 -> :sswitch_6
        0xf843 -> :sswitch_6
        0xf844 -> :sswitch_6
        0xf845 -> :sswitch_6
        0xf846 -> :sswitch_6
        0xf847 -> :sswitch_6
        0xf848 -> :sswitch_6
        0xf849 -> :sswitch_6
        0xf850 -> :sswitch_6
        0xf851 -> :sswitch_6
        0xf852 -> :sswitch_4
        0xf853 -> :sswitch_4
        0xf854 -> :sswitch_4
        0xf855 -> :sswitch_4
        0xf856 -> :sswitch_4
        0xf857 -> :sswitch_4
        0xf858 -> :sswitch_4
        0xf859 -> :sswitch_4
        0xf860 -> :sswitch_4
        0xf861 -> :sswitch_4
        0xf862 -> :sswitch_4
        0xf863 -> :sswitch_4
        0xf864 -> :sswitch_4
        0xf865 -> :sswitch_4
        0xf866 -> :sswitch_4
        0xf867 -> :sswitch_4
        0xf868 -> :sswitch_4
        0xf869 -> :sswitch_4
        0xf870 -> :sswitch_4
        0xf871 -> :sswitch_4
        0xf872 -> :sswitch_4
        0xf873 -> :sswitch_4
        0xf874 -> :sswitch_4
        0xf875 -> :sswitch_4
        0xf876 -> :sswitch_4
        0xf877 -> :sswitch_5
        0xf878 -> :sswitch_5
        0xf879 -> :sswitch_5
        0xf880 -> :sswitch_5
        0xf881 -> :sswitch_5
        0xf882 -> :sswitch_5
        0xf883 -> :sswitch_5
        0xf884 -> :sswitch_5
        0xf885 -> :sswitch_5
        0xf886 -> :sswitch_5
        0xf887 -> :sswitch_5
        0xf888 -> :sswitch_5
        0xf889 -> :sswitch_5
        0xf890 -> :sswitch_5
        0xf891 -> :sswitch_5
        0xf892 -> :sswitch_5
        0xf893 -> :sswitch_5
        0xf894 -> :sswitch_5
        0xf895 -> :sswitch_5
        0xf896 -> :sswitch_5
        0xf897 -> :sswitch_3
        0xf898 -> :sswitch_8
        0xf899 -> :sswitch_8
        0xf900 -> :sswitch_8
        0xf901 -> :sswitch_8
        0xf902 -> :sswitch_8
        0xf903 -> :sswitch_8
        0xf904 -> :sswitch_8
        0xf905 -> :sswitch_8
        0xf906 -> :sswitch_8
        0xf907 -> :sswitch_8
        0xf908 -> :sswitch_8
        0xf909 -> :sswitch_8
        0xf910 -> :sswitch_8
        0xf911 -> :sswitch_8
        0xf912 -> :sswitch_8
        0xf913 -> :sswitch_8
        0xf914 -> :sswitch_8
        0xf915 -> :sswitch_8
        0xf916 -> :sswitch_8
        0xf917 -> :sswitch_8
        0xf918 -> :sswitch_8
        0xf919 -> :sswitch_8
        0xf921 -> :sswitch_8
        0xf922 -> :sswitch_8
        0xf923 -> :sswitch_8
        0xf924 -> :sswitch_8
        0xf925 -> :sswitch_8
        0xf926 -> :sswitch_8
        0xf927 -> :sswitch_8
        0xf928 -> :sswitch_8
        0xf929 -> :sswitch_8
        0xf930 -> :sswitch_8
        0xf931 -> :sswitch_8
        0xf932 -> :sswitch_8
        0xf933 -> :sswitch_8
        0xf934 -> :sswitch_8
        0xf935 -> :sswitch_a
        0xf936 -> :sswitch_a
        0xf937 -> :sswitch_a
        0xf938 -> :sswitch_a
        0xf939 -> :sswitch_a
        0xf940 -> :sswitch_a
        0xf941 -> :sswitch_a
        0xf942 -> :sswitch_a
        0xf943 -> :sswitch_a
        0xf944 -> :sswitch_a
        0xf945 -> :sswitch_a
        0xf946 -> :sswitch_a
        0xf947 -> :sswitch_a
        0xf948 -> :sswitch_a
        0xf949 -> :sswitch_a
        0xf950 -> :sswitch_a
        0xf951 -> :sswitch_a
        0xf952 -> :sswitch_a
        0xf953 -> :sswitch_a
        0xf954 -> :sswitch_a
        0xf955 -> :sswitch_a
        0xf956 -> :sswitch_a
        0xf957 -> :sswitch_a
        0xf958 -> :sswitch_a
        0xf959 -> :sswitch_a
        0xf960 -> :sswitch_a
        0xf961 -> :sswitch_a
        0xf962 -> :sswitch_a
        0xf963 -> :sswitch_c
        0xf964 -> :sswitch_c
        0xf965 -> :sswitch_c
        0xf966 -> :sswitch_c
        0xf967 -> :sswitch_c
        0xf968 -> :sswitch_c
        0xf969 -> :sswitch_c
        0xf970 -> :sswitch_c
        0xf971 -> :sswitch_c
        0xf972 -> :sswitch_c
        0xf973 -> :sswitch_c
        0xf974 -> :sswitch_c
        0xf975 -> :sswitch_c
        0xf976 -> :sswitch_c
        0xf977 -> :sswitch_c
        0xf978 -> :sswitch_c
        0xf979 -> :sswitch_c
        0xf980 -> :sswitch_c
        0xf981 -> :sswitch_c
        0xf982 -> :sswitch_c
        0xf983 -> :sswitch_c
        0xf984 -> :sswitch_c
        0xf985 -> :sswitch_c
        0xf986 -> :sswitch_c
        0xf987 -> :sswitch_c
        0xf988 -> :sswitch_c
        0xf989 -> :sswitch_c
        0xf990 -> :sswitch_c
        0x186a0 -> :sswitch_9
        0x186a1 -> :sswitch_9
        0x186aa -> :sswitch_1
        0x186ab -> :sswitch_9
        0x186b9 -> :sswitch_1
        0x186ba -> :sswitch_7
        0xf4256 -> :sswitch_1
    .end sparse-switch
.end method

.method setShiftKey()V
    .locals 1

    .prologue
    .line 758
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire$WAKey;->isShiftKey:Z

    .line 759
    return-void
.end method
