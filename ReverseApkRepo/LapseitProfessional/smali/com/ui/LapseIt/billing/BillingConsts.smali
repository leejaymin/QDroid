.class public Lcom/ui/LapseIt/billing/BillingConsts;
.super Ljava/lang/Object;
.source "BillingConsts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ui/LapseIt/billing/BillingConsts$PurchaseState;,
        Lcom/ui/LapseIt/billing/BillingConsts$ResponseCode;
    }
.end annotation


# static fields
.field public static final ACTION_REQUEST_PURCHASE:Ljava/lang/String; = "ACTION_REQUEST_PURCHASE"

.field public static final ACTION_RESTORE_PURCHASE:Ljava/lang/String; = "ACTION_RESTORE_PURCHASE"

.field public static final ACTION_VERIFY_PURCHASE:Ljava/lang/String; = "ACTION_VERIFY_PURCHASE"

.field public static final BILLING_REQUEST_API_VERSION:Ljava/lang/String; = "API_VERSION"

.field public static final BILLING_REQUEST_DEVELOPER_PAYLOAD:Ljava/lang/String; = "DEVELOPER_PAYLOAD"

.field public static final BILLING_REQUEST_ITEM_ID:Ljava/lang/String; = "ITEM_ID"

.field public static final BILLING_REQUEST_METHOD:Ljava/lang/String; = "BILLING_REQUEST"

.field public static final BILLING_REQUEST_NONCE:Ljava/lang/String; = "NONCE"

.field public static final BILLING_REQUEST_NOTIFY_IDS:Ljava/lang/String; = "NOTIFY_IDS"

.field public static final BILLING_REQUEST_PACKAGE_NAME:Ljava/lang/String; = "PACKAGE_NAME"

.field public static final BILLING_RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final BILLING_RESPONSE_PURCHASE_INTENT:Ljava/lang/String; = "PURCHASE_INTENT"

.field public static final BILLING_RESPONSE_REQUEST_ID:Ljava/lang/String; = "REQUEST_ID"

.field public static final CHECK_BILLING_SUPPORTED:Ljava/lang/String; = "CHECK_BILLING_SUPPORTED"

.field public static final CONFIRM_NOTIFICATIONS:Ljava/lang/String; = "CONFIRM_NOTIFICATIONS"

.field public static final GET_PURCHASE_INFORMATION:Ljava/lang/String; = "GET_PURCHASE_INFORMATION"

.field public static final INAPP_REQUEST_ID:Ljava/lang/String; = "request_id"

.field public static final INAPP_RESPONSE_CODE:Ljava/lang/String; = "response_code"

.field public static final INAPP_SIGNATURE:Ljava/lang/String; = "inapp_signature"

.field public static final INAPP_SIGNED_DATA:Ljava/lang/String; = "inapp_signed_data"

.field public static final ITEM_CANCELED:Ljava/lang/String; = "android.test.canceled"

.field public static final ITEM_PURCHASED:Ljava/lang/String; = "android.test.purchased"

.field public static final ITEM_REFUNDED:Ljava/lang/String; = "android.test.refunded"

.field public static final ITEM_UNAVAILABLE:Ljava/lang/String; = "android.test.item_unavailable"

.field public static final MARKET_BILLING_SERVICE_ACTION:Ljava/lang/String; = "com.android.vending.billing.MarketBillingService.BIND"

.field public static final NOTIFICATION_ID:Ljava/lang/String; = "notification_id"

.field public static final PURCHASE_IN_APP_NOTIFY:Ljava/lang/String; = "com.android.vending.billing.IN_APP_NOTIFY"

.field public static final PURCHASE_RESPONSE_CODE:Ljava/lang/String; = "com.android.vending.billing.RESPONSE_CODE"

.field public static final PURCHASE_STATE_CHANGED:Ljava/lang/String; = "com.android.vending.billing.PURCHASE_STATE_CHANGED"

.field public static final REQUEST_PURCHASE:Ljava/lang/String; = "REQUEST_PURCHASE"

.field public static final RESTORE_TRANSACTIONS:Ljava/lang/String; = "RESTORE_TRANSACTIONS"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
