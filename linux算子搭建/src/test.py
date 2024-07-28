import cv2
import time
start=time.time()
image=cv2.imread('/home/yiyuan/pancaihuang/build/image/detect.png')

gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
blurred = cv2.GaussianBlur(gray, (5, 5), 0)
edges = cv2.Canny(blurred, 80, 200)
cv2.imwrite('/home/yiyuan/pancaihuang/build/output/Detected_edges.jpg', edges)

contours, _ = cv2.findContours(edges.copy(), cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)

for contour in contours:
    
    x, y, w, h = cv2.boundingRect(contour)
    area = cv2.contourArea(contour)
    
    if 20 < area < 3000 and 8<w<50 and 30<h<50:  
        cv2.rectangle(image, (x-150, y), (x + w, y + h), (0, 255, 0), 2)
        cv2.putText(image,f'({x-150},{y})',(x,y-10),cv2.FONT_HERSHEY_SIMPLEX,0.5,(0,0,255),2)
end_time=time.time()        
cv2.imwrite('/home/yiyuan/pancaihuang/build/output/Detected.jpg', image)
print(end_time-start)