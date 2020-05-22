package common;

public final class Const {

	public static final int PAGE_SIZE = 10;
	public static final int ERROR = -1;
	public static final int FAILED = 0;
	public static final int SUCCESS = 1;
	
	public static final int STATUS_TRANSACTION_INCOMPLETE = 0;	
	public static final int STATUS_TRANSACTION_INCOMPLETE_CANCELLED_BY_SYSTEM = 1;	
	public static final int STATUS_AWAITING_PAYMENT = 2;	
	public static final int STATUS_PAYMENT_COMPLETED = 3;	
	public static final int STATUS_PAYMENT_FAILED = 4;		
	public static final int STATUS_PAYMENT_CANCELLED = 5;	
	public static final int STATUS_PAYMENT_REFUNDED = 6;	
	public static final String[] paymentStatusArray = {"交易未完成", "交易不完整（由系统取消）", "等待付款",
										"付款成功", "付款失败", "付款已取消", "付款已付款"};
	
	public static final int STATUS_AWAITING_ORDER = 0;		
	public static final int STATUS_ORDER_IN_PROCESSING = 1;	
	public static final int STATUS_ORDER_DISPATCHED = 2;	
	public static final int STATUS_ORDER_DELIVERED = 3;		
	public static final int STATUS_ORDER_RETURNED = 4;		
	public static final int STATUS_ORDER_CANCELED = 5;
	public static final String[] shippingStatusArray = {"待处理", "处理", "已发货", "已交付", "已", "订单已取消"};
	
	public static String getPaymentStatusName(int paymentStatus) {
		return paymentStatusArray[paymentStatus];
	}
	public static String getShippingStatusName(int shippingStatus) {
		return shippingStatusArray[shippingStatus];
	}
}
