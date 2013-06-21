.class public Lcom/jellybus/fx/Activity_Main;
.super Landroid/app/Activity;
.source "Activity_Main.java"

# interfaces
.implements Lcom/skt/arm/ArmListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jellybus/fx/Activity_Main$MyLicenseCheckListener;,
        Lcom/jellybus/fx/Activity_Main$MyLicenseCheckerCallback;,
        Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;,
        Lcom/jellybus/fx/Activity_Main$ViewHolderMain;
    }
.end annotation


# static fields
.field public static final AMAZON:I = 0x2

.field private static final BACK_BUTTON:I = 0x64

.field private static final BASE64_PUBLIC_KEY:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqSZOwZhBnRPwpLwOwmY4/h3ZCmwMFbgsVLE54TJTVmOH4rvEF9Ms2SIjFjkupFecmTJyld2LNJZfB2RhfSVJZLdSW1xWVUdadraNpk7wor8fBZI/2fyw2+w7ba+12EEypgpsPpisbPUx0oaw+024PP2jmAJMqQ7+nMuI+jASVr2xV0JHrYd3Kde9K6E8WX65w6yQIhmcQeZAUh9LS7UscY8fqARoT4nUkpF66GDdP73chRy8TqbAb6c17AmcQrPvzpTzKnjD4LV38hNuzI2aqsLEIJUzVvpo9lWHKYljQOhhbBa0Qp0JlxpGQ9Gqxg3UxAlnoc07FdCu/tFhcL9UOwIDAQAB"

.field private static final BORDER:I = 0x4

.field private static final CAMERA:I = 0x0

.field private static final COLOR:I = 0x3

.field private static final CROP:I = 0x2

.field private static final EZIRCONIA_KEY_CREATION_FAILED:I = 0x51

.field private static final EZIRCONIA_LICENSE_MISMATCH:I = 0x32

.field private static final EZIRCONIA_NOT_PURCHASED:I = 0xb

.field private static final EZIRCONIA_RECEIVE_FAILED:I = 0x3d

.field private static final EZIRCONIA_SEND_FAILED:I = 0x3e

.field private static final EZIRCONIA_SERVER_MISMATCH:I = 0x47

.field private static final FX:I = 0x1

.field public static final KT:I = 0x6

.field public static final LGU:I = 0x5

.field public static final LVL:I = 0x0

.field private static final NONE:I = -0x1

.field public static final PIT:I = 0x7

.field public static final QIIP:I = 0x4

.field private static final SALT:[B = null

.field public static final SAMSUNG:I = 0x3

.field private static final SAVE:I = 0x5

.field private static final STORAGE_URI:Landroid/net/Uri; = null

.field public static final TEST:I = -0x1

.field public static final TSTORE:I = 0x1

.field private static isZirGood:Z


# instance fields
.field private AID:Ljava/lang/String;

.field private final ARM:I

.field private final MEMORY:I

.field private final RESET:I

.field private final SDCARD:I

.field private arm:Lcom/skt/arm/ArmManager;

.field private armMsg:Ljava/lang/String;

.field private bitmap_create_handler:Landroid/os/Handler;

.field private check_main_button_isSelected:I

.field private compare:Landroid/graphics/Bitmap;

.field private count_index:[Ljava/lang/Integer;

.field private current_store:I

.field private empty_view:Landroid/widget/ImageView;

.field private flipper_SubMenu:Landroid/widget/ViewFlipper;

.field private flipper_params:Landroid/view/ViewGroup$LayoutParams;

.field public handler_start:Landroid/os/Handler;

.field private image:Landroid/widget/ImageView;

.field private imageture_listener:Landroid/view/View$OnTouchListener;

.field private intent_function:Lcom/jellybus/fx_sub/Intent_function;

.field private isBackPressed:Z

.field private isFxFolder:Z

.field private isNullPoint:[Z

.field private isReset:Z

.field private isSaveFin:Z

.field private isShare:Z

.field private mChecker:Lcom/android/vending/licensing/LicenseChecker;

.field private mDialog:Landroid/app/Dialog;

.field private mLicenseCheckerCallback:Lcom/android/vending/licensing/LicenseCheckerCallback;

.field private main_bar_1:Landroid/widget/ImageView;

.field private main_bar_2:Landroid/widget/ImageView;

.field private main_bar_3:Landroid/widget/ImageView;

.field private main_bar_4:Landroid/widget/ImageView;

.field private main_bar_5:Landroid/widget/ImageView;

.field private main_bar_6:Landroid/widget/ImageView;

.field private main_bar_layout:Landroid/widget/LinearLayout;

.field private main_border_border:Landroid/widget/ImageView;

.field private main_border_stamp:Landroid/widget/ImageView;

.field private main_border_texture:Landroid/widget/ImageView;

.field private main_border_vignetting:Landroid/widget/ImageView;

.field private main_button_border:Landroid/widget/ImageView;

.field private main_button_camera:Landroid/widget/ImageView;

.field private main_button_color:Landroid/widget/ImageView;

.field private main_button_crop:Landroid/widget/ImageView;

.field private main_button_fx:Landroid/widget/ImageView;

.field private main_button_listener:Landroid/view/View$OnClickListener;

.field private main_button_save:Landroid/widget/ImageView;

.field private main_camera_load:Landroid/widget/ImageView;

.field private main_camera_setting:Landroid/widget/ImageView;

.field private main_camera_take:Landroid/widget/ImageView;

.field private main_camera_user:Landroid/widget/ImageView;

.field private main_color_color:Landroid/widget/ImageView;

.field private main_color_curves:Landroid/widget/ImageView;

.field private main_color_exposure:Landroid/widget/ImageView;

.field private main_color_histogram:Landroid/widget/ImageView;

.field private main_color_wb:Landroid/widget/ImageView;

.field private main_compare_info:Landroid/widget/TextView;

.field private main_crop_crop:Landroid/widget/ImageView;

.field private main_crop_rotate:Landroid/widget/ImageView;

.field private main_fx_fx:Landroid/widget/ImageView;

.field private main_fx_timematrix:Landroid/widget/ImageView;

.field private main_redo:Landroid/widget/ImageView;

.field private main_redo_count:Landroid/widget/ImageView;

.field private main_reset:Landroid/widget/ImageView;

.field private main_save_save:Landroid/widget/ImageView;

.field private main_save_share:Landroid/widget/ImageView;

.field private main_undo:Landroid/widget/ImageView;

.field private main_undo_count:Landroid/widget/ImageView;

.field private noneAction:Landroid/view/View$OnTouchListener;

.field onKey:Landroid/content/DialogInterface$OnKeyListener;

.field private page:I

.field private param_height_1:I

.field private param_height_2:I

.field private param_height_3:I

.field private param_height_4:I

.field private param_height_5:I

.field private param_height_6:I

.field private pref:Landroid/content/SharedPreferences;

.field private preview:Landroid/graphics/Bitmap;

.field private redo_listener:Landroid/view/View$OnClickListener;

.field private reset_listener:Landroid/view/View$OnClickListener;

.field private save_bar:Landroid/widget/ImageView;

.field private save_bg:Landroid/widget/ImageView;

.field private save_handler:Landroid/os/Handler;

.field private save_img1:Landroid/widget/ImageView;

.field private save_img2:Landroid/widget/ImageView;

.field private save_layout:Landroid/widget/RelativeLayout;

.field private save_text:Landroid/widget/TextView;

.field private savedFileURI:Landroid/net/Uri;

.field private size:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private startIndex:I

.field private sub_button:Landroid/view/View$OnTouchListener;

.field private toast:Landroid/widget/Toast;

.field private undo_listener:Landroid/view/View$OnClickListener;

.field private urDo:Lcom/jellybus/fx_sub/UndoRedo;

.field private zirconia:Lcom/samsung/zirconia/Zirconia;

.field zirconia_handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1538
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/jellybus/fx/Activity_Main;->STORAGE_URI:Landroid/net/Uri;

    .line 1873
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jellybus/fx/Activity_Main;->SALT:[B

    .line 87
    return-void

    .line 1873
    :array_0
    .array-data 0x1
        0xd2t
        0x1bt
        0x1et
        0xf5t
        0x99t
        0x61t
        0x4at
        0xc0t
        0x33t
        0x58t
        0xa1t
        0xd3t
        0x40t
        0x8bt
        0x26t
        0xe1t
        0xf5t
        0x43t
        0x98t
        0x59t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 87
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 123
    iput v3, p0, Lcom/jellybus/fx/Activity_Main;->check_main_button_isSelected:I

    .line 200
    iput v2, p0, Lcom/jellybus/fx/Activity_Main;->ARM:I

    .line 201
    iput v5, p0, Lcom/jellybus/fx/Activity_Main;->RESET:I

    .line 202
    iput v4, p0, Lcom/jellybus/fx/Activity_Main;->SDCARD:I

    .line 203
    iput v6, p0, Lcom/jellybus/fx/Activity_Main;->MEMORY:I

    .line 209
    new-instance v0, Lcom/jellybus/fx_sub/UndoRedo;

    invoke-direct {v0}, Lcom/jellybus/fx_sub/UndoRedo;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Main;->urDo:Lcom/jellybus/fx_sub/UndoRedo;

    .line 210
    iput v3, p0, Lcom/jellybus/fx/Activity_Main;->startIndex:I

    .line 212
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Integer;

    .line 213
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 214
    const v1, 0x7f020108

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    .line 215
    const v1, 0x7f020109

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 216
    const v1, 0x7f02010a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x4

    .line 217
    const v2, 0x7f02010b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 218
    const v2, 0x7f02010c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 219
    const v2, 0x7f02010d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 220
    const v2, 0x7f02010e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 221
    const v2, 0x7f02010f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 222
    const v2, 0x7f020110

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Main;->count_index:[Ljava/lang/Integer;

    .line 535
    new-instance v0, Lcom/jellybus/fx/Activity_Main$1;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Main$1;-><init>(Lcom/jellybus/fx/Activity_Main;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Main;->noneAction:Landroid/view/View$OnTouchListener;

    .line 545
    new-instance v0, Lcom/jellybus/fx/Activity_Main$2;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Main$2;-><init>(Lcom/jellybus/fx/Activity_Main;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Main;->imageture_listener:Landroid/view/View$OnTouchListener;

    .line 571
    new-instance v0, Lcom/jellybus/fx/Activity_Main$3;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Main$3;-><init>(Lcom/jellybus/fx/Activity_Main;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Main;->reset_listener:Landroid/view/View$OnClickListener;

    .line 580
    new-instance v0, Lcom/jellybus/fx/Activity_Main$4;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Main$4;-><init>(Lcom/jellybus/fx/Activity_Main;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Main;->undo_listener:Landroid/view/View$OnClickListener;

    .line 618
    new-instance v0, Lcom/jellybus/fx/Activity_Main$5;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Main$5;-><init>(Lcom/jellybus/fx/Activity_Main;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Main;->redo_listener:Landroid/view/View$OnClickListener;

    .line 728
    new-instance v0, Lcom/jellybus/fx/Activity_Main$6;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Main$6;-><init>(Lcom/jellybus/fx/Activity_Main;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_button_listener:Landroid/view/View$OnClickListener;

    .line 764
    new-instance v0, Lcom/jellybus/fx/Activity_Main$7;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Main$7;-><init>(Lcom/jellybus/fx/Activity_Main;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Main;->sub_button:Landroid/view/View$OnTouchListener;

    .line 1025
    new-instance v0, Lcom/jellybus/fx/Activity_Main$8;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Main$8;-><init>(Lcom/jellybus/fx/Activity_Main;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Main;->save_handler:Landroid/os/Handler;

    .line 1305
    new-instance v0, Lcom/jellybus/fx/Activity_Main$9;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Main$9;-><init>(Lcom/jellybus/fx/Activity_Main;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Main;->bitmap_create_handler:Landroid/os/Handler;

    .line 1365
    new-array v0, v4, [Z

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Main;->isNullPoint:[Z

    .line 1690
    iput v3, p0, Lcom/jellybus/fx/Activity_Main;->current_store:I

    .line 1774
    const-string v0, "OA00279063"

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Main;->AID:Ljava/lang/String;

    .line 2045
    new-instance v0, Lcom/jellybus/fx/Activity_Main$10;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Main$10;-><init>(Lcom/jellybus/fx/Activity_Main;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Main;->zirconia_handler:Landroid/os/Handler;

    .line 2194
    new-instance v0, Lcom/jellybus/fx/Activity_Main$11;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Main$11;-><init>(Lcom/jellybus/fx/Activity_Main;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Main;->handler_start:Landroid/os/Handler;

    .line 2206
    new-instance v0, Lcom/jellybus/fx/Activity_Main$12;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Main$12;-><init>(Lcom/jellybus/fx/Activity_Main;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Main;->onKey:Landroid/content/DialogInterface$OnKeyListener;

    .line 87
    return-void
.end method

.method private CheckSDCardState()Z
    .locals 2

    .prologue
    .line 1636
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$0(Lcom/jellybus/fx/Activity_Main;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->preview:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->image:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_redo_count:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/jellybus/fx/Activity_Main;)[Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 212
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->count_index:[Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$12(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/Toast;
    .locals 1
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->toast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$13(Lcom/jellybus/fx/Activity_Main;)V
    .locals 0
    .parameter

    .prologue
    .line 1340
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Main;->removeBitmap()V

    return-void
.end method

.method static synthetic access$14(Lcom/jellybus/fx/Activity_Main;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Main;->preview:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$15(Lcom/jellybus/fx/Activity_Main;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1096
    invoke-direct {p0, p1}, Lcom/jellybus/fx/Activity_Main;->toggle_main_icon(Z)V

    return-void
.end method

.method static synthetic access$16(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ViewFlipper;
    .locals 1
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->flipper_SubMenu:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method static synthetic access$17(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_bar_layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$18(Lcom/jellybus/fx/Activity_Main;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 123
    iput p1, p0, Lcom/jellybus/fx/Activity_Main;->check_main_button_isSelected:I

    return-void
.end method

.method static synthetic access$19(Lcom/jellybus/fx/Activity_Main;)V
    .locals 0
    .parameter

    .prologue
    .line 1439
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Main;->reset_main_bar()V

    return-void
.end method

.method static synthetic access$2(Lcom/jellybus/fx/Activity_Main;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->compare:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$20(Lcom/jellybus/fx/Activity_Main;)I
    .locals 1
    .parameter

    .prologue
    .line 123
    iget v0, p0, Lcom/jellybus/fx/Activity_Main;->check_main_button_isSelected:I

    return v0
.end method

.method static synthetic access$21(Lcom/jellybus/fx/Activity_Main;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1448
    invoke-direct {p0, p1}, Lcom/jellybus/fx/Activity_Main;->reset_main_button(I)V

    return-void
.end method

.method static synthetic access$22(Lcom/jellybus/fx/Activity_Main;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1146
    invoke-direct {p0, p1}, Lcom/jellybus/fx/Activity_Main;->check_view_id(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$23(Lcom/jellybus/fx/Activity_Main;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 812
    invoke-direct {p0, p1}, Lcom/jellybus/fx/Activity_Main;->sub_menu_action(I)V

    return-void
.end method

.method static synthetic access$24(Lcom/jellybus/fx/Activity_Main;)Z
    .locals 1
    .parameter

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/jellybus/fx/Activity_Main;->isSaveFin:Z

    return v0
.end method

.method static synthetic access$25(Lcom/jellybus/fx/Activity_Main;)I
    .locals 1
    .parameter

    .prologue
    .line 176
    iget v0, p0, Lcom/jellybus/fx/Activity_Main;->page:I

    return v0
.end method

.method static synthetic access$26(Lcom/jellybus/fx/Activity_Main;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 176
    iput p1, p0, Lcom/jellybus/fx/Activity_Main;->page:I

    return-void
.end method

.method static synthetic access$27(Lcom/jellybus/fx/Activity_Main;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/jellybus/fx/Activity_Main;->isSaveFin:Z

    return-void
.end method

.method static synthetic access$28(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->save_bar:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$29(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->save_layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_compare_info:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$30(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->save_img1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$31(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->save_img2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$32(Lcom/jellybus/fx/Activity_Main;)Z
    .locals 1
    .parameter

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/jellybus/fx/Activity_Main;->isShare:Z

    return v0
.end method

.method static synthetic access$33(Lcom/jellybus/fx/Activity_Main;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/jellybus/fx/Activity_Main;->isShare:Z

    return-void
.end method

.method static synthetic access$34(Lcom/jellybus/fx/Activity_Main;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->savedFileURI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$35(Lcom/jellybus/fx/Activity_Main;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->save_handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$36(Lcom/jellybus/fx/Activity_Main;)V
    .locals 0
    .parameter

    .prologue
    .line 1347
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Main;->removeCompare()V

    return-void
.end method

.method static synthetic access$37(Lcom/jellybus/fx/Activity_Main;)Z
    .locals 1
    .parameter

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/jellybus/fx/Activity_Main;->isReset:Z

    return v0
.end method

.method static synthetic access$38(Lcom/jellybus/fx/Activity_Main;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Main;->compare:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$39(Lcom/jellybus/fx/Activity_Main;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/jellybus/fx/Activity_Main;->isReset:Z

    return-void
.end method

.method static synthetic access$4(Lcom/jellybus/fx/Activity_Main;I)Landroid/app/Dialog;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 650
    invoke-direct {p0, p1}, Lcom/jellybus/fx/Activity_Main;->createDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$40(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_reset:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$41()Z
    .locals 1

    .prologue
    .line 2003
    sget-boolean v0, Lcom/jellybus/fx/Activity_Main;->isZirGood:Z

    return v0
.end method

.method static synthetic access$42(Lcom/jellybus/fx/Activity_Main;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1680
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Main;->armMsg:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$43(Z)V
    .locals 0
    .parameter

    .prologue
    .line 2003
    sput-boolean p0, Lcom/jellybus/fx/Activity_Main;->isZirGood:Z

    return-void
.end method

.method static synthetic access$44(Lcom/jellybus/fx/Activity_Main;)Lcom/samsung/zirconia/Zirconia;
    .locals 1
    .parameter

    .prologue
    .line 1996
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->zirconia:Lcom/samsung/zirconia/Zirconia;

    return-object v0
.end method

.method static synthetic access$45(Lcom/jellybus/fx/Activity_Main;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2019
    invoke-direct {p0, p1}, Lcom/jellybus/fx/Activity_Main;->setMessageSamsung(I)V

    return-void
.end method

.method static synthetic access$46(Lcom/jellybus/fx/Activity_Main;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->size:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$47(Lcom/jellybus/fx/Activity_Main;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$48(Lcom/jellybus/fx/Activity_Main;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->bitmap_create_handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$49(Lcom/jellybus/fx/Activity_Main;)V
    .locals 0
    .parameter

    .prologue
    .line 487
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Main;->undo_redo_reset()V

    return-void
.end method

.method static synthetic access$5(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->empty_view:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$50(Lcom/jellybus/fx/Activity_Main;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/jellybus/fx/Activity_Main;->isBackPressed:Z

    return-void
.end method

.method static synthetic access$6(Lcom/jellybus/fx/Activity_Main;)Lcom/jellybus/fx_sub/UndoRedo;
    .locals 1
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->urDo:Lcom/jellybus/fx_sub/UndoRedo;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_undo:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_redo:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_undo_count:Landroid/widget/ImageView;

    return-object v0
.end method

.method private checkNullPointException()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1247
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->isNullPoint:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->isNullPoint:[Z

    aget-boolean v0, v0, v3

    if-nez v0, :cond_1

    .line 1251
    :cond_0
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Main;->setSizePictureBitmap()V

    .line 1254
    :cond_1
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->empty_view:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1256
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->isNullPoint:[Z

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->isNullPoint:[Z

    aput-boolean v2, v1, v3

    aput-boolean v2, v0, v2

    .line 1257
    return-void
.end method

.method private check_view_id(I)I
    .locals 3
    .parameter "v_index"

    .prologue
    const v2, 0x7f0200e5

    .line 1148
    packed-switch p1, :pswitch_data_0

    .line 1180
    const/4 v0, -0x1

    .line 1183
    .local v0, id:I
    :goto_0
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->flipper_SubMenu:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main;->flipper_params:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1184
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->flipper_SubMenu:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 1185
    return v0

    .line 1150
    .end local v0           #id:I
    :pswitch_0
    const/4 v0, 0x0

    .line 1151
    .restart local v0       #id:I
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->main_bar_1:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1152
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->flipper_params:Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/jellybus/fx/Activity_Main;->param_height_1:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1155
    .end local v0           #id:I
    :pswitch_1
    const/4 v0, 0x1

    .line 1156
    .restart local v0       #id:I
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->main_bar_2:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1157
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->flipper_params:Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/jellybus/fx/Activity_Main;->param_height_2:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1160
    .end local v0           #id:I
    :pswitch_2
    const/4 v0, 0x2

    .line 1161
    .restart local v0       #id:I
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->main_bar_3:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1162
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->flipper_params:Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/jellybus/fx/Activity_Main;->param_height_3:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1165
    .end local v0           #id:I
    :pswitch_3
    const/4 v0, 0x3

    .line 1166
    .restart local v0       #id:I
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->main_bar_4:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1167
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->flipper_params:Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/jellybus/fx/Activity_Main;->param_height_4:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1170
    .end local v0           #id:I
    :pswitch_4
    const/4 v0, 0x4

    .line 1171
    .restart local v0       #id:I
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->main_bar_5:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1172
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->flipper_params:Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/jellybus/fx/Activity_Main;->param_height_5:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1175
    .end local v0           #id:I
    :pswitch_5
    const/4 v0, 0x5

    .line 1176
    .restart local v0       #id:I
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->main_bar_6:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1177
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->flipper_params:Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/jellybus/fx/Activity_Main;->param_height_6:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1148
    :pswitch_data_0
    .packed-switch 0x7f0600d7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private createDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "index"

    .prologue
    const v1, 0x7f050066

    const/4 v2, 0x0

    .line 651
    packed-switch p1, :pswitch_data_0

    .line 721
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 653
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 654
    const v1, 0x7f050041

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Main;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 655
    const v1, 0x7f050042

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Main;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 656
    const-string v1, "OK"

    new-instance v2, Lcom/jellybus/fx/Activity_Main$13;

    invoke-direct {v2, p0}, Lcom/jellybus/fx/Activity_Main$13;-><init>(Lcom/jellybus/fx/Activity_Main;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 673
    const-string v1, "Cancel"

    new-instance v2, Lcom/jellybus/fx/Activity_Main$14;

    invoke-direct {v2, p0}, Lcom/jellybus/fx/Activity_Main$14;-><init>(Lcom/jellybus/fx/Activity_Main;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 679
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 681
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 682
    const v1, 0x7f050043

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Main;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 683
    const v1, 0x7f050044

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Main;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 684
    const-string v1, "OK"

    new-instance v2, Lcom/jellybus/fx/Activity_Main$15;

    invoke-direct {v2, p0}, Lcom/jellybus/fx/Activity_Main$15;-><init>(Lcom/jellybus/fx/Activity_Main;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 691
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 693
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 694
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 695
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->armMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 696
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 697
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->onKey:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 698
    const-string v1, "OK"

    .line 699
    new-instance v2, Lcom/jellybus/fx/Activity_Main$16;

    invoke-direct {v2, p0}, Lcom/jellybus/fx/Activity_Main$16;-><init>(Lcom/jellybus/fx/Activity_Main;)V

    .line 698
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 705
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 707
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 708
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 709
    const v1, 0x7f050049

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 710
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 711
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->onKey:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 712
    const-string v1, "OK"

    new-instance v2, Lcom/jellybus/fx/Activity_Main$17;

    invoke-direct {v2, p0}, Lcom/jellybus/fx/Activity_Main$17;-><init>(Lcom/jellybus/fx/Activity_Main;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 719
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 651
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private flurry_save_event()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1614
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1615
    .local v0, flurry_value:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "Filter count value"

    new-instance v4, Ljava/lang/StringBuilder;

    sget v5, Lcom/jellybus/fx_sub/PictureController;->flurry_filter_count:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1616
    const-string v3, "Filter count"

    invoke-static {v3, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1617
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1618
    .local v1, flurry_value2:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "Undo count value"

    new-instance v4, Ljava/lang/StringBuilder;

    sget v5, Lcom/jellybus/fx_sub/PictureController;->flurry_undo_count:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    const-string v3, "Undo count"

    invoke-static {v3, v1}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1620
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1621
    .local v2, flurry_value3:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "Redo count value"

    new-instance v4, Ljava/lang/StringBuilder;

    sget v5, Lcom/jellybus/fx_sub/PictureController;->flurry_redo_count:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1622
    const-string v3, "Redo count"

    invoke-static {v3, v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1624
    sput v6, Lcom/jellybus/fx_sub/PictureController;->flurry_filter_count:I

    .line 1625
    sput v6, Lcom/jellybus/fx_sub/PictureController;->flurry_redo_count:I

    .line 1626
    sput v6, Lcom/jellybus/fx_sub/PictureController;->flurry_undo_count:I

    .line 1627
    return-void
.end method

.method private getAvailableExternalMemorySize()J
    .locals 10

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Main;->CheckSDCardState()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 476
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 477
    .local v4, path:Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 478
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 479
    .local v2, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 480
    .local v0, availableBlocks:J
    mul-long v6, v0, v2

    const-wide/32 v8, 0x100000

    div-long/2addr v6, v8

    .line 482
    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v4           #path:Ljava/io/File;
    .end local v5           #stat:Landroid/os/StatFs;
    :goto_0
    return-wide v6

    :cond_0
    const-wide/16 v6, 0x0

    goto :goto_0
.end method

.method private getResultText(I)Ljava/lang/String;
    .locals 1
    .parameter "ret"

    .prologue
    .line 2157
    const-string v0, ""

    .line 2158
    .local v0, text:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 2179
    :goto_0
    return-object v0

    .line 2160
    :pswitch_0
    const-string v0, "\uc815\uc0c1"

    .line 2161
    goto :goto_0

    .line 2163
    :pswitch_1
    const-string v0, "\ubd88\ubc95 \ubcf5\uc81c \uc571"

    .line 2164
    goto :goto_0

    .line 2166
    :pswitch_2
    const-string v0, "\uc798\ubabb\ub41c Context"

    .line 2167
    goto :goto_0

    .line 2169
    :pswitch_3
    const-string v0, "\uc62c\ub808 \ub9c8\ucf13 \uc124\uce58 \uc548\ub428"

    .line 2170
    goto :goto_0

    .line 2172
    :pswitch_4
    const-string v0, "\ubd88\ubc95 \ubcf5\uc81c \uae30\ub2a5 \ucd08\uae30\ud654 \uc911"

    .line 2173
    goto :goto_0

    .line 2175
    :pswitch_5
    const-string v0, "\uc54c \uc218 \uc5c6\ub294 \uc624\ub958"

    goto :goto_0

    .line 2158
    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private removeBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1341
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->preview:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1342
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1343
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1344
    iput-object v1, p0, Lcom/jellybus/fx/Activity_Main;->preview:Landroid/graphics/Bitmap;

    .line 1346
    :cond_0
    return-void
.end method

.method private removeCompare()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1348
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->compare:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1349
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1350
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1351
    iput-object v1, p0, Lcom/jellybus/fx/Activity_Main;->compare:Landroid/graphics/Bitmap;

    .line 1353
    :cond_0
    return-void
.end method

.method private reset_main_bar()V
    .locals 2

    .prologue
    const v1, 0x7f0200e4

    .line 1440
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_bar_1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1441
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_bar_2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1442
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_bar_3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1443
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_bar_4:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1444
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_bar_5:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1445
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_bar_6:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1446
    return-void
.end method

.method private reset_main_button(I)V
    .locals 4
    .parameter "check"

    .prologue
    const/4 v3, 0x4

    const v2, 0x7f0200f7

    const/4 v1, 0x0

    .line 1449
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 1450
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->flipper_SubMenu:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 1453
    invoke-direct {p0, v1}, Lcom/jellybus/fx/Activity_Main;->toggle_main_icon(Z)V

    .line 1455
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_button_camera:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1456
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_button_fx:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1457
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_button_crop:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1458
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_button_color:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1459
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_button_border:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1460
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_button_save:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1462
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_button_camera:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1463
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_button_fx:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1464
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_button_crop:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1465
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_button_color:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1466
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_button_border:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1467
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_button_save:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1469
    const/4 v0, -0x1

    iput v0, p0, Lcom/jellybus/fx/Activity_Main;->check_main_button_isSelected:I

    .line 1470
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Main;->reset_main_bar()V

    .line 1490
    :cond_0
    :goto_0
    return-void

    .line 1471
    :cond_1
    if-nez p1, :cond_2

    .line 1472
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_button_camera:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1473
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_button_camera:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 1474
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 1475
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_button_fx:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1476
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_button_fx:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 1477
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 1478
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_button_crop:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1479
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_button_crop:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 1480
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 1481
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_button_color:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1482
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_button_color:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 1483
    :cond_5
    if-ne p1, v3, :cond_6

    .line 1484
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_button_border:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1485
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_button_border:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 1486
    :cond_6
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 1487
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_button_save:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1488
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_button_save:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0
.end method

.method private saveImage()V
    .locals 22

    .prologue
    .line 1542
    invoke-direct/range {p0 .. p0}, Lcom/jellybus/fx/Activity_Main;->removeBitmap()V

    .line 1543
    invoke-direct/range {p0 .. p0}, Lcom/jellybus/fx/Activity_Main;->removeCompare()V

    .line 1544
    sget v17, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v18, Lcom/jellybus/fx_sub/PictureController;->height:I

    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v17 .. v19}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 1545
    .local v13, saveImg:Landroid/graphics/Bitmap;
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v13}, Lcom/jellybus/fx/Juliet;->getOriginalIndex(IILandroid/graphics/Bitmap;)V

    .line 1547
    const-string v17, "pref"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/jellybus/fx/Activity_Main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jellybus/fx/Activity_Main;->pref:Landroid/content/SharedPreferences;

    .line 1548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Main;->pref:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "isFxFolder"

    const/16 v19, 0x1

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jellybus/fx/Activity_Main;->isFxFolder:Z

    .line 1551
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jellybus/fx/Activity_Main;->isFxFolder:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 1552
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "/PicsPlay Pro"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1553
    .local v10, imgPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Main;->save_text:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const v18, 0x7f050045

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/jellybus/fx/Activity_Main;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1559
    :goto_0
    const-string v17, "PicsPlay_%d.jpg"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1561
    .local v9, imgName:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1562
    .local v11, outputStream:Ljava/io/OutputStream;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1564
    .local v7, filePath:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1565
    .local v4, dir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_0

    .line 1566
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 1569
    :cond_0
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    .local v6, file:Ljava/io/File;
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1572
    .end local v11           #outputStream:Ljava/io/OutputStream;
    .local v12, outputStream:Ljava/io/OutputStream;
    :try_start_1
    sget-object v17, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v18, 0x55

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1574
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 1576
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jellybus/fx/Activity_Main;->savedFileURI:Landroid/net/Uri;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v11, v12

    .line 1583
    .end local v6           #file:Ljava/io/File;
    .end local v12           #outputStream:Ljava/io/OutputStream;
    .restart local v11       #outputStream:Ljava/io/OutputStream;
    :goto_1
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v14

    .line 1585
    .local v14, size:J
    invoke-virtual/range {p0 .. p0}, Lcom/jellybus/fx/Activity_Main;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1586
    .local v3, cr:Landroid/content/ContentResolver;
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 1587
    .local v16, values:Landroid/content/ContentValues;
    const-string v17, "_data"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    const-string v17, "title"

    const-string v18, "PicsPlay Pro"

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    const-string v17, "_display_name"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    const-string v17, "orientation"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1591
    const-string v17, "datetaken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1592
    const-string v17, "mime_type"

    const-string v18, "image/jpeg"

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    const-string v17, "_size"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1595
    sget-object v17, Lcom/jellybus/fx/Activity_Main;->STORAGE_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1597
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 1598
    const/4 v13, 0x0

    .line 1600
    sget v17, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v18, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v17 .. v19}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jellybus/fx/Activity_Main;->preview:Landroid/graphics/Bitmap;

    .line 1601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Main;->preview:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Main;->preview:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Main;->preview:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 1602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Main;->image:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Main;->preview:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1604
    sget v17, Lcom/jellybus/fx_sub/PictureController;->compare_width:I

    sget v18, Lcom/jellybus/fx_sub/PictureController;->compare_height:I

    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v17 .. v19}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jellybus/fx/Activity_Main;->compare:Landroid/graphics/Bitmap;

    .line 1605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Main;->compare:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Main;->compare:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Main;->compare:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/jellybus/fx/Juliet;->getCompareIndex(IILandroid/graphics/Bitmap;)V

    .line 1607
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jellybus/fx/Activity_Main;->isSaveFin:Z

    .line 1609
    invoke-direct/range {p0 .. p0}, Lcom/jellybus/fx/Activity_Main;->flurry_save_event()V

    .line 1610
    return-void

    .line 1555
    .end local v3           #cr:Landroid/content/ContentResolver;
    .end local v4           #dir:Ljava/io/File;
    .end local v7           #filePath:Ljava/lang/String;
    .end local v9           #imgName:Ljava/lang/String;
    .end local v10           #imgPath:Ljava/lang/String;
    .end local v11           #outputStream:Ljava/io/OutputStream;
    .end local v14           #size:J
    .end local v16           #values:Landroid/content/ContentValues;
    :cond_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "/DCIM/Camera"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1556
    .restart local v10       #imgPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Main;->save_text:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const v18, 0x7f050046

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/jellybus/fx/Activity_Main;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1577
    .restart local v4       #dir:Ljava/io/File;
    .restart local v7       #filePath:Ljava/lang/String;
    .restart local v9       #imgName:Ljava/lang/String;
    .restart local v11       #outputStream:Ljava/io/OutputStream;
    :catch_0
    move-exception v5

    .line 1578
    .local v5, fe:Ljava/io/FileNotFoundException;
    :goto_2
    const-string v17, "test"

    const-string v18, "file not found"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1579
    .end local v5           #fe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v8

    .line 1580
    .local v8, ie:Ljava/io/IOException;
    :goto_3
    const-string v17, "test"

    const-string v18, "IO"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1579
    .end local v8           #ie:Ljava/io/IOException;
    .end local v11           #outputStream:Ljava/io/OutputStream;
    .restart local v6       #file:Ljava/io/File;
    .restart local v12       #outputStream:Ljava/io/OutputStream;
    :catch_2
    move-exception v8

    move-object v11, v12

    .end local v12           #outputStream:Ljava/io/OutputStream;
    .restart local v11       #outputStream:Ljava/io/OutputStream;
    goto :goto_3

    .line 1577
    .end local v11           #outputStream:Ljava/io/OutputStream;
    .restart local v12       #outputStream:Ljava/io/OutputStream;
    :catch_3
    move-exception v5

    move-object v11, v12

    .end local v12           #outputStream:Ljava/io/OutputStream;
    .restart local v11       #outputStream:Ljava/io/OutputStream;
    goto :goto_2
.end method

.method private setARM()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1693
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->empty_view:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1696
    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Main;->startArmCheck(I)V

    .line 1722
    return-void
.end method

.method private setKT()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2124
    invoke-direct {p0, p0}, Lcom/jellybus/fx/Activity_Main;->verifyApp(Landroid/content/Context;)I

    move-result v0

    .line 2125
    .local v0, ret:I
    if-nez v0, :cond_0

    .line 2127
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->handler_start:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2133
    :goto_0
    return-void

    .line 2130
    :cond_0
    invoke-direct {p0, v0}, Lcom/jellybus/fx/Activity_Main;->getResultText(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Main;->armMsg:Ljava/lang/String;

    .line 2131
    invoke-direct {p0, v2}, Lcom/jellybus/fx/Activity_Main;->createDialog(I)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private setLVL()V
    .locals 7

    .prologue
    .line 1880
    new-instance v2, Lcom/jellybus/fx/Activity_Main$MyLicenseCheckerCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/jellybus/fx/Activity_Main$MyLicenseCheckerCallback;-><init>(Lcom/jellybus/fx/Activity_Main;Lcom/jellybus/fx/Activity_Main$MyLicenseCheckerCallback;)V

    iput-object v2, p0, Lcom/jellybus/fx/Activity_Main;->mLicenseCheckerCallback:Lcom/android/vending/licensing/LicenseCheckerCallback;

    .line 1882
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/jellybus/fx/Activity_Main;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1883
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 1885
    .local v0, deviceId:Ljava/lang/String;
    new-instance v2, Lcom/android/vending/licensing/LicenseChecker;

    .line 1886
    new-instance v3, Lcom/android/vending/licensing/ServerManagedPolicy;

    new-instance v4, Lcom/android/vending/licensing/AESObfuscator;

    sget-object v5, Lcom/jellybus/fx/Activity_Main;->SALT:[B

    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Main;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v0}, Lcom/android/vending/licensing/AESObfuscator;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, p0, v4}, Lcom/android/vending/licensing/ServerManagedPolicy;-><init>(Landroid/content/Context;Lcom/android/vending/licensing/Obfuscator;)V

    .line 1887
    const-string v4, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqSZOwZhBnRPwpLwOwmY4/h3ZCmwMFbgsVLE54TJTVmOH4rvEF9Ms2SIjFjkupFecmTJyld2LNJZfB2RhfSVJZLdSW1xWVUdadraNpk7wor8fBZI/2fyw2+w7ba+12EEypgpsPpisbPUx0oaw+024PP2jmAJMqQ7+nMuI+jASVr2xV0JHrYd3Kde9K6E8WX65w6yQIhmcQeZAUh9LS7UscY8fqARoT4nUkpF66GDdP73chRy8TqbAb6c17AmcQrPvzpTzKnjD4LV38hNuzI2aqsLEIJUzVvpo9lWHKYljQOhhbBa0Qp0JlxpGQ9Gqxg3UxAlnoc07FdCu/tFhcL9UOwIDAQAB"

    invoke-direct {v2, p0, v3, v4}, Lcom/android/vending/licensing/LicenseChecker;-><init>(Landroid/content/Context;Lcom/android/vending/licensing/Policy;Ljava/lang/String;)V

    .line 1885
    iput-object v2, p0, Lcom/jellybus/fx/Activity_Main;->mChecker:Lcom/android/vending/licensing/LicenseChecker;

    .line 1890
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main;->mChecker:Lcom/android/vending/licensing/LicenseChecker;

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Main;->mLicenseCheckerCallback:Lcom/android/vending/licensing/LicenseCheckerCallback;

    invoke-virtual {v2, v3}, Lcom/android/vending/licensing/LicenseChecker;->checkAccess(Lcom/android/vending/licensing/LicenseCheckerCallback;)V

    .line 1891
    return-void
.end method

.method private setMessageSamsung(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 2020
    sparse-switch p1, :sswitch_data_0

    .line 2040
    const-string v0, "\ub77c\uc774\uc120\uc2a4\ub97c \ud655\uc778\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Main;->armMsg:Ljava/lang/String;

    .line 2043
    :goto_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->zirconia_handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2044
    return-void

    .line 2022
    :sswitch_0
    const-string v0, "\ub77c\uc774\uc120\uc2a4 \ub610\ub294 \uae30\uae30 \uc624\ub958\ub85c \ub514\ubc14\uc774\uc2a4\uc5d0 \ub77c\uc774\uc120\uc2a4\ub97c \uc800\uc7a5\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Main;->armMsg:Ljava/lang/String;

    goto :goto_0

    .line 2025
    :sswitch_1
    const-string v0, "\uc77c\uc2dc\uc801\uc778 \uc7a5\uc560\ub85c \ub77c\uc774\uc120\uc2a4\ub97c \uac80\uc99d\ud558\uac70\ub098 \uc870\ud68c\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Main;->armMsg:Ljava/lang/String;

    goto :goto_0

    .line 2028
    :sswitch_2
    const-string v0, "\uc815\uc0c1\uc801\uc73c\ub85c \uad6c\ub9e4\ud558\uc9c0 \uc54a\uc740 \uc5b4\ud50c\ub9ac\ucf00\uc774\uc158\uc785\ub2c8\ub2e4."

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Main;->armMsg:Ljava/lang/String;

    goto :goto_0

    .line 2031
    :sswitch_3
    const-string v0, "\ub124\ud2b8\uc6cc\ud06c\uc758 \uc774\uc0c1\uc73c\ub85c \ub77c\uc774\uc120\uc2a4 \uc218\uc2e0\uc774 \uc2e4\ud328\ud558\uc600\uc2b5\ub2c8\ub2e4."

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Main;->armMsg:Ljava/lang/String;

    goto :goto_0

    .line 2034
    :sswitch_4
    const-string v0, "\ub124\ud2b8\uc6cc\ud06c\uc758 \uc774\uc0c1\uc73c\ub85c \ub77c\uc774\uc120\uc2a4 \uc804\ub2ec\uc774 \uc2e4\ud328\ud558\uc600\uc2b5\ub2c8\ub2e4."

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Main;->armMsg:Ljava/lang/String;

    goto :goto_0

    .line 2037
    :sswitch_5
    const-string v0, "\uc11c\ubc84 \uc7a5\uc560\ub85c \ub77c\uc774\uc120\uc2a4\ub97c \uc870\ud68c\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Main;->armMsg:Ljava/lang/String;

    goto :goto_0

    .line 2020
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_2
        0x32 -> :sswitch_1
        0x3d -> :sswitch_3
        0x3e -> :sswitch_4
        0x47 -> :sswitch_5
        0x51 -> :sswitch_0
    .end sparse-switch
.end method

.method private setSizePictureBitmap()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 1261
    invoke-static {}, Lcom/jellybus/fx_sub/PictureController;->getOriginalSize()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1263
    invoke-static {}, Lcom/jellybus/fx_sub/PictureController;->getSizeList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Main;->size:Ljava/util/ArrayList;

    .line 1264
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->size:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 1265
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 1266
    .local v0, list:Landroid/widget/ListView;
    new-instance v1, Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;

    invoke-direct {v1, p0, p0}, Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;-><init>(Lcom/jellybus/fx/Activity_Main;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1267
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 1268
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    .line 1269
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 1270
    new-instance v1, Lcom/jellybus/fx/Activity_Main$18;

    invoke-direct {v1, p0}, Lcom/jellybus/fx/Activity_Main$18;-><init>(Lcom/jellybus/fx/Activity_Main;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1278
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Main;->mDialog:Landroid/app/Dialog;

    .line 1279
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->mDialog:Landroid/app/Dialog;

    const v2, 0x7f050023

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setTitle(I)V

    .line 1280
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1281
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0xbbbbbc

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1282
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->setTitleColor(I)V

    .line 1283
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->mDialog:Landroid/app/Dialog;

    new-instance v2, Lcom/jellybus/fx/Activity_Main$19;

    invoke-direct {v2, p0}, Lcom/jellybus/fx/Activity_Main$19;-><init>(Lcom/jellybus/fx/Activity_Main;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1291
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1302
    .end local v0           #list:Landroid/widget/ListView;
    :goto_0
    return-void

    .line 1293
    :cond_0
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->size:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sput v1, Lcom/jellybus/fx_sub/PictureController;->width:I

    .line 1294
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->size:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sput v1, Lcom/jellybus/fx_sub/PictureController;->height:I

    .line 1295
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->size:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sput v1, Lcom/jellybus/fx_sub/PictureController;->reset_width:I

    .line 1296
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->size:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sput v1, Lcom/jellybus/fx_sub/PictureController;->reset_height:I

    .line 1297
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->bitmap_create_handler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1300
    :cond_1
    const v1, 0x7f050048

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private setTstore()V
    .locals 3

    .prologue
    .line 1778
    :try_start_0
    new-instance v1, Lcom/skt/arm/ArmManager;

    invoke-direct {v1, p0}, Lcom/skt/arm/ArmManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Main;->arm:Lcom/skt/arm/ArmManager;

    .line 1779
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->arm:Lcom/skt/arm/ArmManager;

    invoke-virtual {v1, p0}, Lcom/skt/arm/ArmManager;->setArmListener(Lcom/skt/arm/ArmListener;)V

    .line 1780
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->arm:Lcom/skt/arm/ArmManager;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main;->AID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/skt/arm/ArmManager;->ARM_Plugin_ExecuteARM(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1784
    :goto_0
    return-void

    .line 1781
    :catch_0
    move-exception v0

    .line 1782
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private set_camera_info()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1369
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->isNullPoint:[Z

    aget-boolean v0, v0, v10

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->isNullPoint:[Z

    aget-boolean v0, v0, v11

    if-eqz v0, :cond_1

    .line 1370
    const-string v0, "Load fail. Plz try again. lol"

    invoke-static {p0, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 1397
    :cond_0
    :goto_0
    return-void

    .line 1373
    :cond_1
    const/4 v0, 0x3

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    .line 1374
    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    .line 1375
    const-string v1, "orientation"

    aput-object v1, v2, v0

    .line 1376
    .local v2, proj:[Ljava/lang/String;
    sget-object v1, Lcom/jellybus/fx_sub/PictureController;->pictureURI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/jellybus/fx/Activity_Main;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1377
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1379
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    sput-wide v0, Lcom/jellybus/fx_sub/PictureController;->id:J

    .line 1380
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 1383
    .local v6, column_idx:I
    :try_start_1
    const-string v0, "orientation"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 1387
    .local v9, orientation:Ljava/lang/String;
    :goto_1
    :try_start_2
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jellybus/fx_sub/PictureController;->path:Ljava/lang/String;

    .line 1388
    invoke-static {v9}, Lcom/jellybus/fx_sub/PictureController;->setPictureDegree(Ljava/lang/String;)V

    .line 1390
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->isNullPoint:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 1391
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->isNullPoint:[Z

    const/4 v1, 0x1

    const/4 v3, 0x1

    aput-boolean v3, v0, v1
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1392
    .end local v2           #proj:[Ljava/lang/String;
    .end local v6           #column_idx:I
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #orientation:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1393
    .local v8, e:Ljava/lang/NullPointerException;
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->isNullPoint:[Z

    aput-boolean v11, v0, v10

    .line 1394
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Main;->set_camera_info_forException()V

    goto :goto_0

    .line 1384
    .end local v8           #e:Ljava/lang/NullPointerException;
    .restart local v2       #proj:[Ljava/lang/String;
    .restart local v6       #column_idx:I
    .restart local v7       #cursor:Landroid/database/Cursor;
    :catch_1
    move-exception v8

    .line 1385
    .restart local v8       #e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v9, "0"
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    .restart local v9       #orientation:Ljava/lang/String;
    goto :goto_1
.end method

.method private set_camera_info_forException()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1401
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->isNullPoint:[Z

    aget-boolean v0, v0, v9

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->isNullPoint:[Z

    aget-boolean v0, v0, v10

    if-eqz v0, :cond_1

    .line 1402
    const-string v0, "Load fail. Plz try again. lol"

    invoke-static {p0, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 1420
    :cond_0
    :goto_0
    return-void

    .line 1405
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Main;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->intent_function:Lcom/jellybus/fx_sub/Intent_function;

    iget-object v1, v1, Lcom/jellybus/fx_sub/Intent_function;->STORAGE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1406
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    .line 1407
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jellybus/fx_sub/PictureController;->path:Ljava/lang/String;

    .line 1408
    const-string v0, "orientation"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1410
    .local v8, orientation:Ljava/lang/String;
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    sput-wide v0, Lcom/jellybus/fx_sub/PictureController;->id:J

    .line 1411
    invoke-static {v8}, Lcom/jellybus/fx_sub/PictureController;->setPictureDegree(Ljava/lang/String;)V

    .line 1413
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->isNullPoint:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 1414
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->isNullPoint:[Z

    const/4 v1, 0x1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1415
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #orientation:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1416
    .local v7, e:Ljava/lang/NullPointerException;
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->isNullPoint:[Z

    aput-boolean v10, v0, v9

    .line 1417
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Main;->set_camera_info()V

    goto :goto_0
.end method

.method private sub_menu_action(I)V
    .locals 25
    .parameter "view_idx"

    .prologue
    .line 814
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 815
    .local v4, flurry_value:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, eventName:Ljava/lang/String;
    const/16 v18, 0x0

    .line 816
    .local v18, keyString:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/jellybus/fx/Activity_Main;->getPackageName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcom/jellybus/fx/Activity_Main;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/jellybus/fx_sub/PictureController;->getResourceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 818
    .local v20, valueString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx/Activity_Main;->check_main_button_isSelected:I

    move/from16 v19, v0

    .line 819
    .local v19, submenu_idx:I
    if-nez v19, :cond_1

    .line 820
    const-string v3, "Camera Menu"

    .line 821
    const-string v18, "Camera Menu value"

    .line 822
    packed-switch p1, :pswitch_data_0

    .line 1018
    :cond_0
    :goto_0
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    invoke-static {v3, v4}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1020
    return-void

    .line 825
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Main;->intent_function:Lcom/jellybus/fx_sub/Intent_function;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/jellybus/fx_sub/Intent_function;->load_gallery()Landroid/content/Intent;

    move-result-object v10

    .line 826
    .local v10, intent_gallery:Landroid/content/Intent;
    const/16 v21, 0x4cf

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v10, v1}, Lcom/jellybus/fx/Activity_Main;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 830
    .end local v10           #intent_gallery:Landroid/content/Intent;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Main;->intent_function:Lcom/jellybus/fx_sub/Intent_function;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/jellybus/fx_sub/Intent_function;->load_camera()Landroid/content/Intent;

    move-result-object v6

    .line 831
    .local v6, intent_camera:Landroid/content/Intent;
    const/16 v21, 0x4d0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v6, v1}, Lcom/jellybus/fx/Activity_Main;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 835
    .end local v6           #intent_camera:Landroid/content/Intent;
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/jellybus/fx/Activity_Main;->removeBitmap()V

    .line 838
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/jellybus/fx/Activity_Main;->undo_redo_activity_action(Z)V

    .line 840
    new-instance v11, Landroid/content/Intent;

    const-class v21, Lcom/jellybus/fx/Activity_Main_Manual;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 841
    .local v11, intent_mannual:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/jellybus/fx/Activity_Main;->startActivity(Landroid/content/Intent;)V

    .line 842
    invoke-virtual/range {p0 .. p0}, Lcom/jellybus/fx/Activity_Main;->finish()V

    .line 843
    const/high16 v21, 0x10a

    const v22, 0x10a0001

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/jellybus/fx/Activity_Main;->overridePendingTransition(II)V

    goto :goto_0

    .line 847
    .end local v11           #intent_mannual:Landroid/content/Intent;
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/jellybus/fx/Activity_Main;->removeBitmap()V

    .line 850
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/jellybus/fx/Activity_Main;->undo_redo_activity_action(Z)V

    .line 852
    new-instance v13, Landroid/content/Intent;

    const-class v21, Lcom/jellybus/fx/Activity_Main_Setting;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 853
    .local v13, intent_setting:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/jellybus/fx/Activity_Main;->startActivity(Landroid/content/Intent;)V

    .line 854
    invoke-virtual/range {p0 .. p0}, Lcom/jellybus/fx/Activity_Main;->finish()V

    .line 855
    const/high16 v21, 0x10a

    const v22, 0x10a0001

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/jellybus/fx/Activity_Main;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 858
    .end local v13           #intent_setting:Landroid/content/Intent;
    :cond_1
    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 859
    const-string v3, "Main Menu"

    .line 860
    const-string v18, "Main Menu value"

    .line 861
    invoke-direct/range {p0 .. p0}, Lcom/jellybus/fx/Activity_Main;->removeBitmap()V

    .line 862
    invoke-direct/range {p0 .. p0}, Lcom/jellybus/fx/Activity_Main;->removeCompare()V

    .line 864
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/jellybus/fx/Activity_Main;->undo_redo_activity_action(Z)V

    .line 865
    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 875
    :pswitch_4
    new-instance v9, Landroid/content/Intent;

    const-class v21, Lcom/jellybus/fx/Activity_FX;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 876
    .local v9, intent_fx:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/jellybus/fx/Activity_Main;->startActivity(Landroid/content/Intent;)V

    .line 877
    invoke-virtual/range {p0 .. p0}, Lcom/jellybus/fx/Activity_Main;->finish()V

    .line 878
    const/high16 v21, 0x10a

    const v22, 0x10a0001

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/jellybus/fx/Activity_Main;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 868
    .end local v9           #intent_fx:Landroid/content/Intent;
    :pswitch_5
    new-instance v16, Landroid/content/Intent;

    const-class v21, Lcom/jellybus/fx/Activity_TimeMatrix;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 869
    .local v16, intent_time:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/jellybus/fx/Activity_Main;->startActivity(Landroid/content/Intent;)V

    .line 870
    invoke-virtual/range {p0 .. p0}, Lcom/jellybus/fx/Activity_Main;->finish()V

    .line 871
    const/high16 v21, 0x10a

    const v22, 0x10a0001

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/jellybus/fx/Activity_Main;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 881
    .end local v16           #intent_time:Landroid/content/Intent;
    :cond_2
    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 882
    const-string v3, "Main Menu"

    .line 883
    const-string v18, "Main Menu value"

    .line 884
    invoke-direct/range {p0 .. p0}, Lcom/jellybus/fx/Activity_Main;->removeBitmap()V

    .line 885
    invoke-direct/range {p0 .. p0}, Lcom/jellybus/fx/Activity_Main;->removeCompare()V

    .line 887
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/jellybus/fx/Activity_Main;->undo_redo_activity_action(Z)V

    .line 888
    packed-switch p1, :pswitch_data_2

    goto/16 :goto_0

    .line 891
    :pswitch_6
    new-instance v12, Landroid/content/Intent;

    const-class v21, Lcom/jellybus/fx/Activity_Crop_Rotate;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 892
    .local v12, intent_rotate:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/jellybus/fx/Activity_Main;->startActivity(Landroid/content/Intent;)V

    .line 893
    invoke-virtual/range {p0 .. p0}, Lcom/jellybus/fx/Activity_Main;->finish()V

    .line 894
    const/high16 v21, 0x10a

    const v22, 0x10a0001

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/jellybus/fx/Activity_Main;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 898
    .end local v12           #intent_rotate:Landroid/content/Intent;
    :pswitch_7
    new-instance v8, Landroid/content/Intent;

    const-class v21, Lcom/jellybus/fx/Activity_Crop_Crop;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 899
    .local v8, intent_crop:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/jellybus/fx/Activity_Main;->startActivity(Landroid/content/Intent;)V

    .line 900
    invoke-virtual/range {p0 .. p0}, Lcom/jellybus/fx/Activity_Main;->finish()V

    .line 901
    const/high16 v21, 0x10a

    const v22, 0x10a0001

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/jellybus/fx/Activity_Main;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 904
    .end local v8           #intent_crop:Landroid/content/Intent;
    :cond_3
    const/16 v21, 0x3

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 905
    const-string v3, "Main Menu"

    .line 906
    const-string v18, "Main Menu value"

    .line 907
    invoke-direct/range {p0 .. p0}, Lcom/jellybus/fx/Activity_Main;->removeBitmap()V

    .line 908
    invoke-direct/range {p0 .. p0}, Lcom/jellybus/fx/Activity_Main;->removeCompare()V

    .line 910
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/jellybus/fx/Activity_Main;->undo_redo_activity_action(Z)V

    .line 911
    new-instance v7, Landroid/content/Intent;

    const-class v21, Lcom/jellybus/fx/Activity_Color_Color;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 912
    .local v7, intent_color:Landroid/content/Intent;
    packed-switch p1, :pswitch_data_3

    goto/16 :goto_0

    .line 915
    :pswitch_8
    const-string v21, "menuID"

    const-string v22, "Exposure"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 916
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/jellybus/fx/Activity_Main;->startActivity(Landroid/content/Intent;)V

    .line 917
    invoke-virtual/range {p0 .. p0}, Lcom/jellybus/fx/Activity_Main;->finish()V

    .line 918
    const/high16 v21, 0x10a

    const v22, 0x10a0001

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/jellybus/fx/Activity_Main;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 922
    :pswitch_9
    const-string v21, "menuID"

    const-string v22, "Color"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 923
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/jellybus/fx/Activity_Main;->startActivity(Landroid/content/Intent;)V

    .line 924
    invoke-virtual/range {p0 .. p0}, Lcom/jellybus/fx/Activity_Main;->finish()V

    .line 925
    const/high16 v21, 0x10a

    const v22, 0x10a0001

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/jellybus/fx/Activity_Main;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 929
    :pswitch_a
    const-string v21, "menuID"

    const-string v22, "White Balance"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 930
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/jellybus/fx/Activity_Main;->startActivity(Landroid/content/Intent;)V

    .line 931
    invoke-virtual/range {p0 .. p0}, Lcom/jellybus/fx/Activity_Main;->finish()V

    .line 932
    const/high16 v21, 0x10a

    const v22, 0x10a0001

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/jellybus/fx/Activity_Main;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 936
    :pswitch_b
    const/4 v7, 0x0

    .line 937
    new-instance v7, Landroid/content/Intent;

    .end local v7           #intent_color:Landroid/content/Intent;
    const-class v21, Lcom/jellybus/fx/Activity_Color_Curve;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 938
    .restart local v7       #intent_color:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/jellybus/fx/Activity_Main;->startActivity(Landroid/content/Intent;)V

    .line 939
    invoke-virtual/range {p0 .. p0}, Lcom/jellybus/fx/Activity_Main;->finish()V

    .line 940
    const/high16 v21, 0x10a

    const v22, 0x10a0001

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/jellybus/fx/Activity_Main;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 944
    :pswitch_c
    const/4 v7, 0x0

    .line 945
    new-instance v7, Landroid/content/Intent;

    .end local v7           #intent_color:Landroid/content/Intent;
    const-class v21, Lcom/jellybus/fx/Activity_Color_Histogram;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 946
    .restart local v7       #intent_color:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/jellybus/fx/Activity_Main;->startActivity(Landroid/content/Intent;)V

    .line 947
    invoke-virtual/range {p0 .. p0}, Lcom/jellybus/fx/Activity_Main;->finish()V

    .line 948
    const/high16 v21, 0x10a

    const v22, 0x10a0001

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/jellybus/fx/Activity_Main;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 951
    .end local v7           #intent_color:Landroid/content/Intent;
    :cond_4
    const/16 v21, 0x4

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 952
    const-string v3, "Main Menu"

    .line 953
    const-string v18, "Main Menu value"

    .line 954
    invoke-direct/range {p0 .. p0}, Lcom/jellybus/fx/Activity_Main;->removeBitmap()V

    .line 955
    invoke-direct/range {p0 .. p0}, Lcom/jellybus/fx/Activity_Main;->removeCompare()V

    .line 957
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/jellybus/fx/Activity_Main;->undo_redo_activity_action(Z)V

    .line 958
    packed-switch p1, :pswitch_data_4

    goto/16 :goto_0

    .line 961
    :pswitch_d
    new-instance v14, Landroid/content/Intent;

    const-class v21, Lcom/jellybus/fx/Activity_Border_Stamp;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v14, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 963
    .local v14, intent_stamp:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/jellybus/fx/Activity_Main;->startActivity(Landroid/content/Intent;)V

    .line 964
    invoke-virtual/range {p0 .. p0}, Lcom/jellybus/fx/Activity_Main;->finish()V

    .line 965
    const/high16 v21, 0x10a

    const v22, 0x10a0001

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/jellybus/fx/Activity_Main;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 969
    .end local v14           #intent_stamp:Landroid/content/Intent;
    :pswitch_e
    new-instance v15, Landroid/content/Intent;

    const-class v21, Lcom/jellybus/fx/Activity_Border_Texture;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 970
    .local v15, intent_texture:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/jellybus/fx/Activity_Main;->startActivity(Landroid/content/Intent;)V

    .line 971
    invoke-virtual/range {p0 .. p0}, Lcom/jellybus/fx/Activity_Main;->finish()V

    .line 972
    const/high16 v21, 0x10a

    const v22, 0x10a0001

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/jellybus/fx/Activity_Main;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 976
    .end local v15           #intent_texture:Landroid/content/Intent;
    :pswitch_f
    new-instance v5, Landroid/content/Intent;

    const-class v21, Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 977
    .local v5, intent_border:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/jellybus/fx/Activity_Main;->startActivity(Landroid/content/Intent;)V

    .line 978
    invoke-virtual/range {p0 .. p0}, Lcom/jellybus/fx/Activity_Main;->finish()V

    .line 979
    const/high16 v21, 0x10a

    const v22, 0x10a0001

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/jellybus/fx/Activity_Main;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 983
    .end local v5           #intent_border:Landroid/content/Intent;
    :pswitch_10
    new-instance v17, Landroid/content/Intent;

    const-class v21, Lcom/jellybus/fx/Activity_Border_Vignetting;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 984
    .local v17, intent_vignetting:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/jellybus/fx/Activity_Main;->startActivity(Landroid/content/Intent;)V

    .line 985
    invoke-virtual/range {p0 .. p0}, Lcom/jellybus/fx/Activity_Main;->finish()V

    .line 986
    const/high16 v21, 0x10a

    const v22, 0x10a0001

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/jellybus/fx/Activity_Main;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 989
    .end local v17           #intent_vignetting:Landroid/content/Intent;
    :cond_5
    const/16 v21, 0x5

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 990
    const-string v3, "Save Menu"

    .line 991
    const-string v18, "Save Menu value"

    .line 992
    invoke-direct/range {p0 .. p0}, Lcom/jellybus/fx/Activity_Main;->removeBitmap()V

    .line 993
    invoke-direct/range {p0 .. p0}, Lcom/jellybus/fx/Activity_Main;->removeCompare()V

    .line 995
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/jellybus/fx/Activity_Main;->undo_redo_activity_action(Z)V

    .line 996
    packed-switch p1, :pswitch_data_5

    goto/16 :goto_0

    .line 999
    :pswitch_11
    invoke-direct/range {p0 .. p0}, Lcom/jellybus/fx/Activity_Main;->saveImage()V

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Main;->save_layout:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Main;->save_img1:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Main;->compare:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Main;->save_img2:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Main;->preview:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Main;->save_handler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-wide/16 v23, 0x320

    invoke-virtual/range {v21 .. v24}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1008
    :pswitch_12
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jellybus/fx/Activity_Main;->isShare:Z

    .line 1009
    invoke-direct/range {p0 .. p0}, Lcom/jellybus/fx/Activity_Main;->saveImage()V

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Main;->save_layout:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Main;->save_img1:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Main;->compare:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Main;->save_img2:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Main;->preview:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Main;->save_handler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-wide/16 v23, 0x320

    invoke-virtual/range {v21 .. v24}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 822
    nop

    :pswitch_data_0
    .packed-switch 0x7f06012e
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 865
    :pswitch_data_1
    .packed-switch 0x7f060133
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 888
    :pswitch_data_2
    .packed-switch 0x7f060136
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 912
    :pswitch_data_3
    .packed-switch 0x7f060139
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 958
    :pswitch_data_4
    .packed-switch 0x7f06013f
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_f
    .end packed-switch

    .line 996
    :pswitch_data_5
    .packed-switch 0x7f060144
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method private toggle_main_icon(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 1097
    if-eqz p1, :cond_0

    .line 1099
    iget v0, p0, Lcom/jellybus/fx/Activity_Main;->check_main_button_isSelected:I

    packed-switch v0, :pswitch_data_0

    .line 1142
    :goto_0
    return-void

    .line 1101
    :pswitch_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_button_camera:Landroid/widget/ImageView;

    const v1, 0x7f0200f0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1104
    :pswitch_1
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_button_fx:Landroid/widget/ImageView;

    const v1, 0x7f0200f6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1107
    :pswitch_2
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_button_crop:Landroid/widget/ImageView;

    const v1, 0x7f0200f4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1110
    :pswitch_3
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_button_color:Landroid/widget/ImageView;

    const v1, 0x7f0200f2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1113
    :pswitch_4
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_button_border:Landroid/widget/ImageView;

    const v1, 0x7f0200ee

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1116
    :pswitch_5
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_button_save:Landroid/widget/ImageView;

    const v1, 0x7f0200fa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1121
    :cond_0
    iget v0, p0, Lcom/jellybus/fx/Activity_Main;->check_main_button_isSelected:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1123
    :pswitch_6
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_button_camera:Landroid/widget/ImageView;

    const v1, 0x7f0200ef

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1126
    :pswitch_7
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_button_fx:Landroid/widget/ImageView;

    const v1, 0x7f0200f5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1129
    :pswitch_8
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_button_crop:Landroid/widget/ImageView;

    const v1, 0x7f0200f3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1132
    :pswitch_9
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_button_color:Landroid/widget/ImageView;

    const v1, 0x7f0200f1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1135
    :pswitch_a
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_button_border:Landroid/widget/ImageView;

    const v1, 0x7f0200ed

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1138
    :pswitch_b
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_button_save:Landroid/widget/ImageView;

    const v1, 0x7f0200f9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1099
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1121
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private undo_redo_activity_action(Z)V
    .locals 3
    .parameter "isSave"

    .prologue
    .line 499
    if-eqz p1, :cond_1

    .line 501
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->urDo:Lcom/jellybus/fx_sub/UndoRedo;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/UndoRedo;->resetImage(I)V

    .line 502
    sget v0, Lcom/jellybus/fx_sub/UndoRedo;->currentIndex:I

    iput v0, p0, Lcom/jellybus/fx/Activity_Main;->startIndex:I

    .line 504
    sget v0, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Main;->preview:Landroid/graphics/Bitmap;

    .line 505
    sget v0, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main;->preview:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 506
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->image:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 507
    sget v0, Lcom/jellybus/fx_sub/PictureController;->compare_width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->compare_height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Main;->compare:Landroid/graphics/Bitmap;

    .line 508
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main;->compare:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->getCompareIndex(IILandroid/graphics/Bitmap;)V

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->urDo:Lcom/jellybus/fx_sub/UndoRedo;

    iget v1, p0, Lcom/jellybus/fx/Activity_Main;->startIndex:I

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/UndoRedo;->resetImage(I)V

    .line 512
    sget v0, Lcom/jellybus/fx_sub/UndoRedo;->currentIndex:I

    iput v0, p0, Lcom/jellybus/fx/Activity_Main;->startIndex:I

    .line 513
    sget-boolean v0, Lcom/jellybus/fx_sub/PictureController;->hasBitmap:Z

    if-eqz v0, :cond_0

    .line 515
    sget v0, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Main;->preview:Landroid/graphics/Bitmap;

    .line 516
    sget v0, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main;->preview:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 517
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->image:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 518
    sget v0, Lcom/jellybus/fx_sub/PictureController;->compare_width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->compare_height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Main;->compare:Landroid/graphics/Bitmap;

    .line 519
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main;->compare:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->getCompareIndex(IILandroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private undo_redo_reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 488
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->urDo:Lcom/jellybus/fx_sub/UndoRedo;

    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/jellybus/fx_sub/UndoRedo;->removeFolder(Landroid/content/Context;Ljava/lang/String;)V

    .line 489
    sget-object v0, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    sget-object v1, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 490
    sget-object v0, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 491
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_undo:Landroid/widget/ImageView;

    const v1, 0x7f020123

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 492
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_redo:Landroid/widget/ImageView;

    const v1, 0x7f020119

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 493
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_undo_count:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 494
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->main_redo_count:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 495
    return-void
.end method

.method private verifyApp(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 2138
    const/4 v2, -0x5

    .line 2140
    .local v2, ret:I
    invoke-static {}, Lcom/kt/olleh/protection/ProtectionService;->getProtection()Lcom/kt/olleh/protection/ProtectionService;

    move-result-object v1

    .line 2142
    .local v1, protectionService:Lcom/kt/olleh/protection/ProtectionService;
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/kt/olleh/protection/ProtectionService;->verifyApp(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 2151
    :goto_0
    return v2

    .line 2143
    :catch_0
    move-exception v0

    .line 2144
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2145
    const/4 v2, -0x5

    goto :goto_0

    .line 2146
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2147
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2148
    const/4 v2, -0x5

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v3, 0x4d0

    const/16 v2, 0x4cf

    .line 1206
    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    .line 1208
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Main;->undo_redo_reset()V

    .line 1211
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->empty_view:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1212
    if-eq p1, v2, :cond_0

    if-ne p1, v3, :cond_2

    .line 1214
    :cond_0
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Main;->removeBitmap()V

    .line 1215
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Main;->removeCompare()V

    .line 1216
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removeAllIndex()V

    .line 1217
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removeCompareIndex()V

    .line 1218
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1221
    if-ne p1, v3, :cond_4

    .line 1222
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->intent_function:Lcom/jellybus/fx_sub/Intent_function;

    invoke-virtual {v0}, Lcom/jellybus/fx_sub/Intent_function;->camera_Exception()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1224
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Main;->set_camera_info_forException()V

    .line 1235
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Main;->checkNullPointException()V

    .line 1237
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->empty_view:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1243
    :cond_2
    :goto_1
    return-void

    .line 1227
    :cond_3
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Main;->set_camera_info()V

    goto :goto_0

    .line 1229
    :cond_4
    if-ne p1, v2, :cond_1

    .line 1230
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/jellybus/fx_sub/PictureController;->pictureURI:Landroid/net/Uri;

    .line 1231
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Main;->set_camera_info()V

    goto :goto_0

    .line 1241
    :cond_5
    const-string v0, "test"

    const-string v1, "Intent Fail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onArmResult()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1787
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->arm:Lcom/skt/arm/ArmManager;

    iget v0, v0, Lcom/skt/arm/ArmManager;->nNetState:I

    sparse-switch v0, :sswitch_data_0

    .line 1807
    :goto_0
    return-void

    .line 1794
    :sswitch_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->handler_start:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1802
    :sswitch_1
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->arm:Lcom/skt/arm/ArmManager;

    iget-object v0, v0, Lcom/skt/arm/ArmManager;->sResMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Main;->armMsg:Ljava/lang/String;

    .line 1803
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->armMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1804
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Main;->finish()V

    goto :goto_0

    .line 1787
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 1497
    iget v0, p0, Lcom/jellybus/fx/Activity_Main;->check_main_button_isSelected:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->preview:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1498
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/jellybus/fx/Activity_Main;->reset_main_button(I)V

    .line 1532
    :goto_0
    return-void

    .line 1500
    :cond_0
    iget-boolean v0, p0, Lcom/jellybus/fx/Activity_Main;->isBackPressed:Z

    if-nez v0, :cond_1

    .line 1501
    iput-boolean v3, p0, Lcom/jellybus/fx/Activity_Main;->isBackPressed:Z

    .line 1502
    const v0, 0x7f050069

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Main;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1504
    new-instance v0, Lcom/jellybus/fx/Activity_Main$20;

    const-wide/16 v2, 0xbb8

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/jellybus/fx/Activity_Main$20;-><init>(Lcom/jellybus/fx/Activity_Main;JJ)V

    .line 1514
    invoke-virtual {v0}, Lcom/jellybus/fx/Activity_Main$20;->start()Landroid/os/CountDownTimer;

    goto :goto_0

    .line 1517
    :cond_1
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->urDo:Lcom/jellybus/fx_sub/UndoRedo;

    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/jellybus/fx_sub/UndoRedo;->removeFolder(Landroid/content/Context;Ljava/lang/String;)V

    .line 1518
    sget-object v0, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    sget-object v1, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1519
    sget-object v0, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1521
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Main;->removeBitmap()V

    .line 1522
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Main;->removeCompare()V

    .line 1523
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removeAllIndex()V

    .line 1524
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removeCompareIndex()V

    .line 1525
    invoke-static {}, Lcom/jellybus/fx_sub/PictureController;->resetPictureInfo()V

    .line 1526
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1527
    invoke-virtual {p0, v3}, Lcom/jellybus/fx/Activity_Main;->moveTaskToBack(Z)Z

    .line 1528
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Main;->finish()V

    .line 1529
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const v13, 0x7f0200f8

    const v12, 0x7f0200f0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 236
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 237
    const v6, 0x7f03000c

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->setContentView(I)V

    .line 239
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Main;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 242
    const v6, 0x7f0600cf

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->image:Landroid/widget/ImageView;

    .line 245
    const v6, 0x7f0600d7

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_button_camera:Landroid/widget/ImageView;

    .line 246
    const v6, 0x7f0600d8

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_button_fx:Landroid/widget/ImageView;

    .line 247
    const v6, 0x7f0600d9

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_button_crop:Landroid/widget/ImageView;

    .line 248
    const v6, 0x7f0600da

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_button_color:Landroid/widget/ImageView;

    .line 249
    const v6, 0x7f0600db

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_button_border:Landroid/widget/ImageView;

    .line 250
    const v6, 0x7f0600dc

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_button_save:Landroid/widget/ImageView;

    .line 251
    const v6, 0x7f0600d0

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_reset:Landroid/widget/ImageView;

    .line 252
    const v6, 0x7f0600d2

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_undo:Landroid/widget/ImageView;

    .line 253
    const v6, 0x7f0600d1

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_redo:Landroid/widget/ImageView;

    .line 254
    const v6, 0x7f0600d4

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_undo_count:Landroid/widget/ImageView;

    .line 255
    const v6, 0x7f0600d3

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_redo_count:Landroid/widget/ImageView;

    .line 256
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, ""

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->toast:Landroid/widget/Toast;

    .line 260
    const v6, 0x7f0600e4

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ViewFlipper;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->flipper_SubMenu:Landroid/widget/ViewFlipper;

    .line 261
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->flipper_SubMenu:Landroid/widget/ViewFlipper;

    invoke-virtual {v6}, Landroid/widget/ViewFlipper;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->flipper_params:Landroid/view/ViewGroup$LayoutParams;

    .line 262
    const v6, 0x7f06012d

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 263
    .local v0, submenu1:Landroid/widget/LinearLayout;
    const v6, 0x7f060132

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 264
    .local v1, submenu2:Landroid/widget/LinearLayout;
    const v6, 0x7f060135

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 265
    .local v2, submenu3:Landroid/widget/LinearLayout;
    const v6, 0x7f060138

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 266
    .local v3, submenu4:Landroid/widget/LinearLayout;
    const v6, 0x7f06013e

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 267
    .local v4, submenu5:Landroid/widget/LinearLayout;
    const v6, 0x7f060143

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 268
    .local v5, submenu6:Landroid/widget/LinearLayout;
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->noneAction:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 269
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->noneAction:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 270
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->noneAction:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 271
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->noneAction:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 272
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->noneAction:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 273
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->noneAction:Landroid/view/View$OnTouchListener;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 275
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/jellybus/fx/Activity_Main;->param_height_1:I

    .line 276
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/jellybus/fx/Activity_Main;->param_height_2:I

    .line 277
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/jellybus/fx/Activity_Main;->param_height_3:I

    .line 278
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/jellybus/fx/Activity_Main;->param_height_4:I

    .line 279
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/jellybus/fx/Activity_Main;->param_height_5:I

    .line 280
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/jellybus/fx/Activity_Main;->param_height_6:I

    .line 285
    const v6, 0x7f0600dd

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_bar_layout:Landroid/widget/LinearLayout;

    .line 286
    const v6, 0x7f0600de

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_bar_1:Landroid/widget/ImageView;

    .line 287
    const v6, 0x7f0600df

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_bar_2:Landroid/widget/ImageView;

    .line 288
    const v6, 0x7f0600e0

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_bar_3:Landroid/widget/ImageView;

    .line 289
    const v6, 0x7f0600e1

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_bar_4:Landroid/widget/ImageView;

    .line 290
    const v6, 0x7f0600e2

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_bar_5:Landroid/widget/ImageView;

    .line 291
    const v6, 0x7f0600e3

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_bar_6:Landroid/widget/ImageView;

    .line 295
    const v6, 0x7f06012e

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_camera_load:Landroid/widget/ImageView;

    .line 296
    const v6, 0x7f06012f

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_camera_take:Landroid/widget/ImageView;

    .line 297
    const v6, 0x7f060130

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_camera_user:Landroid/widget/ImageView;

    .line 298
    const v6, 0x7f060131

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_camera_setting:Landroid/widget/ImageView;

    .line 299
    const v6, 0x7f060134

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_fx_timematrix:Landroid/widget/ImageView;

    .line 300
    const v6, 0x7f060133

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_fx_fx:Landroid/widget/ImageView;

    .line 301
    const v6, 0x7f060136

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_crop_rotate:Landroid/widget/ImageView;

    .line 302
    const v6, 0x7f060137

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_crop_crop:Landroid/widget/ImageView;

    .line 303
    const v6, 0x7f060139

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_color_exposure:Landroid/widget/ImageView;

    .line 304
    const v6, 0x7f06013a

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_color_color:Landroid/widget/ImageView;

    .line 305
    const v6, 0x7f06013b

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_color_wb:Landroid/widget/ImageView;

    .line 306
    const v6, 0x7f06013c

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_color_curves:Landroid/widget/ImageView;

    .line 307
    const v6, 0x7f06013d

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_color_histogram:Landroid/widget/ImageView;

    .line 308
    const v6, 0x7f06013f

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_border_stamp:Landroid/widget/ImageView;

    .line 309
    const v6, 0x7f060140

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_border_texture:Landroid/widget/ImageView;

    .line 310
    const v6, 0x7f060142

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_border_border:Landroid/widget/ImageView;

    .line 311
    const v6, 0x7f060141

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_border_vignetting:Landroid/widget/ImageView;

    .line 312
    const v6, 0x7f060144

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_save_save:Landroid/widget/ImageView;

    .line 313
    const v6, 0x7f060145

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_save_share:Landroid/widget/ImageView;

    .line 317
    const v6, 0x7f06002b

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->empty_view:Landroid/widget/ImageView;

    .line 318
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->empty_view:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main;->noneAction:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 321
    const v6, 0x7f0600e5

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->save_layout:Landroid/widget/RelativeLayout;

    .line 322
    const v6, 0x7f0600eb

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->save_text:Landroid/widget/TextView;

    .line 323
    const v6, 0x7f0600e6

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->save_bg:Landroid/widget/ImageView;

    .line 324
    const v6, 0x7f0600e8

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->save_img1:Landroid/widget/ImageView;

    .line 325
    const v6, 0x7f0600e9

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->save_img2:Landroid/widget/ImageView;

    .line 326
    const v6, 0x7f0600ea

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->save_bar:Landroid/widget/ImageView;

    .line 327
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->save_bg:Landroid/widget/ImageView;

    const/16 v7, 0xc8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 332
    const v6, 0x7f0600d5

    invoke-virtual {p0, v6}, Lcom/jellybus/fx/Activity_Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_compare_info:Landroid/widget/TextView;

    .line 336
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->image:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main;->imageture_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 339
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_reset:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main;->reset_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_undo:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main;->undo_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_redo:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main;->redo_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_button_camera:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main;->main_button_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_button_fx:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main;->main_button_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_button_crop:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main;->main_button_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_button_color:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main;->main_button_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_button_border:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main;->main_button_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_button_save:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main;->main_button_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_button_camera:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 351
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_button_fx:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 352
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_button_crop:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 353
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_button_color:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 354
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_button_border:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 355
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_button_save:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 358
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_camera_load:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main;->sub_button:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 359
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_camera_take:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main;->sub_button:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 360
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_camera_user:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main;->sub_button:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 361
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_camera_setting:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main;->sub_button:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 362
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_fx_timematrix:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main;->sub_button:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 363
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_fx_fx:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main;->sub_button:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 364
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_crop_rotate:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main;->sub_button:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 365
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_crop_crop:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main;->sub_button:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 366
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_color_exposure:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main;->sub_button:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 367
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_color_color:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main;->sub_button:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 368
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_color_wb:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main;->sub_button:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 369
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_color_curves:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main;->sub_button:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 370
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_color_histogram:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main;->sub_button:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 371
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_border_stamp:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main;->sub_button:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 372
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_border_texture:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main;->sub_button:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 373
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_border_border:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main;->sub_button:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 374
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_border_vignetting:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main;->sub_button:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 375
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_save_save:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main;->sub_button:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 376
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_save_share:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main;->sub_button:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 378
    new-instance v6, Lcom/jellybus/fx_sub/Intent_function;

    invoke-direct {v6, p0}, Lcom/jellybus/fx_sub/Intent_function;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->intent_function:Lcom/jellybus/fx_sub/Intent_function;

    .line 382
    sget-boolean v6, Lcom/jellybus/fx_sub/PictureController;->isAllow:Z

    if-nez v6, :cond_1

    .line 384
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Main;->CheckSDCardState()Z

    move-result v6

    if-nez v6, :cond_3

    .line 385
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/jellybus/fx/Activity_Main;->createDialog(I)Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 392
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Main;->setARM()V

    .line 411
    :cond_1
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Main;->removeBitmap()V

    .line 412
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Main;->removeCompare()V

    .line 414
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Main;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "android.intent.extra.STREAM"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 415
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Main;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "android.intent.extra.STREAM"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    sput-object v6, Lcom/jellybus/fx_sub/PictureController;->pictureURI:Landroid/net/Uri;

    .line 418
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Main;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "jellybus"

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 420
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Main;->set_camera_info_forException()V

    .line 426
    :goto_1
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Main;->checkNullPointException()V

    .line 429
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_button_camera:Landroid/widget/ImageView;

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 430
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_button_camera:Landroid/widget/ImageView;

    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 431
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_button_camera:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 432
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_button_camera:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getId()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/jellybus/fx/Activity_Main;->check_view_id(I)I

    move-result v6

    iput v6, p0, Lcom/jellybus/fx/Activity_Main;->check_main_button_isSelected:I

    .line 433
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->flipper_SubMenu:Landroid/widget/ViewFlipper;

    invoke-virtual {v6, v10}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 434
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_bar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 471
    :cond_2
    :goto_2
    return-void

    .line 388
    :cond_3
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Main;->getAvailableExternalMemorySize()J

    move-result-wide v6

    const-wide/16 v8, 0xa

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 389
    const/4 v6, 0x3

    invoke-direct {p0, v6}, Lcom/jellybus/fx/Activity_Main;->createDialog(I)Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 422
    :cond_4
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Main;->set_camera_info()V

    goto :goto_1

    .line 436
    :cond_5
    sget-boolean v6, Lcom/jellybus/fx_sub/PictureController;->hasBitmap:Z

    if-nez v6, :cond_6

    .line 438
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_button_camera:Landroid/widget/ImageView;

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 439
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_button_camera:Landroid/widget/ImageView;

    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 440
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_button_camera:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 441
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_button_camera:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getId()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/jellybus/fx/Activity_Main;->check_view_id(I)I

    move-result v6

    iput v6, p0, Lcom/jellybus/fx/Activity_Main;->check_main_button_isSelected:I

    .line 442
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->flipper_SubMenu:Landroid/widget/ViewFlipper;

    invoke-virtual {v6, v10}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 443
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_bar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 446
    :cond_6
    sget v6, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v7, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->preview:Landroid/graphics/Bitmap;

    .line 447
    sget v6, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v7, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    iget-object v8, p0, Lcom/jellybus/fx/Activity_Main;->preview:Landroid/graphics/Bitmap;

    invoke-static {v6, v7, v8}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 448
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->image:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 450
    sget v6, Lcom/jellybus/fx_sub/PictureController;->compare_width:I

    sget v7, Lcom/jellybus/fx_sub/PictureController;->compare_height:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Main;->compare:Landroid/graphics/Bitmap;

    .line 451
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/jellybus/fx/Activity_Main;->compare:Landroid/graphics/Bitmap;

    invoke-static {v6, v7, v8}, Lcom/jellybus/fx/Juliet;->getCompareIndex(IILandroid/graphics/Bitmap;)V

    .line 454
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_reset:Landroid/widget/ImageView;

    const v7, 0x7f02011c

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 455
    const/4 v6, -0x1

    iput v6, p0, Lcom/jellybus/fx/Activity_Main;->startIndex:I

    .line 456
    sget-object v6, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v11, :cond_2

    .line 457
    sget v6, Lcom/jellybus/fx_sub/UndoRedo;->currentIndex:I

    iput v6, p0, Lcom/jellybus/fx/Activity_Main;->startIndex:I

    .line 458
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->count_index:[Ljava/lang/Integer;

    iget v7, p0, Lcom/jellybus/fx/Activity_Main;->startIndex:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_7

    .line 459
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_undo:Landroid/widget/ImageView;

    const v7, 0x7f020204

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 460
    :cond_7
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_undo_count:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main;->count_index:[Ljava/lang/Integer;

    iget v8, p0, Lcom/jellybus/fx/Activity_Main;->startIndex:I

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 462
    sget-object v6, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/jellybus/fx/Activity_Main;->startIndex:I

    if-le v6, v7, :cond_2

    .line 463
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_redo:Landroid/widget/ImageView;

    const v7, 0x7f020129

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 464
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Main;->main_redo_count:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main;->count_index:[Ljava/lang/Integer;

    sget-object v8, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    iget v9, p0, Lcom/jellybus/fx/Activity_Main;->startIndex:I

    sub-int/2addr v8, v9

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1668
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1669
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    if-eqz v0, :cond_0

    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 1670
    :cond_0
    sget-boolean v0, Lcom/jellybus/fx_sub/PictureController;->isAllow:Z

    if-nez v0, :cond_1

    .line 1671
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main;->mChecker:Lcom/android/vending/licensing/LicenseChecker;

    invoke-virtual {v0}, Lcom/android/vending/licensing/LicenseChecker;->onDestroy()V

    .line 1672
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 1644
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1645
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    if-nez v0, :cond_1

    .line 1646
    const-string v0, "4EZYBVGR4X8UBEAITHT4"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 1659
    :cond_0
    :goto_0
    return-void

    .line 1647
    :cond_1
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1648
    const-string v0, "HMWN2AGW2LYRYQ7ICC4U"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1649
    :cond_2
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1650
    const-string v0, "3IDYI4ZBTFXHBC8BSSQZ"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1651
    :cond_3
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 1652
    const-string v0, "4UX5JWZGU78W1H642Q4E"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1653
    :cond_4
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 1654
    const-string v0, "SHHUZX9C5PR2PR3GRMFH"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1655
    :cond_5
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 1656
    const-string v0, "D2IQFQKELNZMA7LDJ4XT"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1657
    :cond_6
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 1658
    const-string v0, "YCU2I7ZKF1MZXMUZ84LA"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1662
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1663
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1664
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 1665
    :cond_0
    return-void
.end method

.method public startArmCheck(I)V
    .locals 3
    .parameter "num"

    .prologue
    const/4 v2, 0x0

    .line 1724
    packed-switch p1, :pswitch_data_0

    .line 1761
    :goto_0
    iget v1, p0, Lcom/jellybus/fx/Activity_Main;->current_store:I

    sput v1, Lcom/jellybus/fx_sub/PictureController;->market:I

    .line 1762
    return-void

    .line 1726
    :pswitch_0
    iput v2, p0, Lcom/jellybus/fx/Activity_Main;->current_store:I

    .line 1727
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Main;->setLVL()V

    goto :goto_0

    .line 1730
    :pswitch_1
    const/4 v1, 0x7

    iput v1, p0, Lcom/jellybus/fx/Activity_Main;->current_store:I

    goto :goto_0

    .line 1734
    :pswitch_2
    const/4 v1, 0x1

    iput v1, p0, Lcom/jellybus/fx/Activity_Main;->current_store:I

    .line 1735
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Main;->setTstore()V

    goto :goto_0

    .line 1738
    :pswitch_3
    const/4 v1, 0x2

    iput v1, p0, Lcom/jellybus/fx/Activity_Main;->current_store:I

    .line 1739
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->handler_start:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1742
    :pswitch_4
    const/4 v1, 0x3

    iput v1, p0, Lcom/jellybus/fx/Activity_Main;->current_store:I

    .line 1743
    new-instance v1, Lcom/samsung/zirconia/Zirconia;

    invoke-direct {v1, p0}, Lcom/samsung/zirconia/Zirconia;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Main;->zirconia:Lcom/samsung/zirconia/Zirconia;

    .line 1744
    new-instance v0, Lcom/jellybus/fx/Activity_Main$MyLicenseCheckListener;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Main$MyLicenseCheckListener;-><init>(Lcom/jellybus/fx/Activity_Main;)V

    .line 1745
    .local v0, zlistener:Lcom/jellybus/fx/Activity_Main$MyLicenseCheckListener;
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->zirconia:Lcom/samsung/zirconia/Zirconia;

    invoke-virtual {v1, v0}, Lcom/samsung/zirconia/Zirconia;->setLicenseCheckListener(Lcom/samsung/zirconia/LicenseCheckListener;)V

    .line 1746
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main;->zirconia:Lcom/samsung/zirconia/Zirconia;

    invoke-virtual {v1, v2, v2}, Lcom/samsung/zirconia/Zirconia;->checkLicense(ZZ)V

    goto :goto_0

    .line 1749
    .end local v0           #zlistener:Lcom/jellybus/fx/Activity_Main$MyLicenseCheckListener;
    :pswitch_5
    const/4 v1, 0x4

    iput v1, p0, Lcom/jellybus/fx/Activity_Main;->current_store:I

    goto :goto_0

    .line 1753
    :pswitch_6
    const/4 v1, 0x5

    iput v1, p0, Lcom/jellybus/fx/Activity_Main;->current_store:I

    goto :goto_0

    .line 1757
    :pswitch_7
    const/4 v1, 0x6

    iput v1, p0, Lcom/jellybus/fx/Activity_Main;->current_store:I

    .line 1758
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Main;->setKT()V

    goto :goto_0

    .line 1724
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1
    .end packed-switch
.end method
