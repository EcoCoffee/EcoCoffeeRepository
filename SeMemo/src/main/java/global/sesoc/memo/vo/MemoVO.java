package global.sesoc.memo.vo;

/**
 * 쪽지를 정의하는 모델
 */
public class MemoVO {
	private int num;
	private String fromId;
	private String toId;
	private String title;
	private String content;
	private String inputdate;
	
	public MemoVO() {	}

	public MemoVO(int num, String fromId, String toId, String title, String content, String inputdate) {
		this.num = num;
		this.fromId = fromId;
		this.toId = toId;
		this.title = title;
		this.content = content;
		this.inputdate = inputdate;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getFromId() {
		return fromId;
	}

	public void setFromId(String fromId) {
		this.fromId = fromId;
	}

	public String getToId() {
		return toId;
	}

	public void setToId(String toId) {
		this.toId = toId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getInputdate() {
		return inputdate;
	}

	public void setInputdate(String inputdate) {
		this.inputdate = inputdate;
	}

	@Override
	public String toString() {
		return "MemoVO [num=" + num + ", fromId=" + fromId + ", toId=" + toId + ", title=" + title + ", content="
				+ content + ", inputdate=" + inputdate + "]";
	}
}