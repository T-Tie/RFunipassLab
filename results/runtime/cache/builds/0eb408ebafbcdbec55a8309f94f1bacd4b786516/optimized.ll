; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_0i0bqcz.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }

@s = dso_local global [110 x i8] zeroinitializer, align 16
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@_ZSt3cin = external global %"class.std::basic_istream", align 8

; Function Attrs: mustprogress uwtable
define dso_local void @_Z7operatev() local_unnamed_addr #0 {
entry:
  %pre = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %j13 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %pre) #5
  %call = call i64 @strlen(ptr noundef @s) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %pre, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #5
  %sub = sub nsw i32 %conv, 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %sub.sink = phi i32 [ %sub, %entry ], [ %dec, %for.inc11 ]
  %cmp = icmp sge i32 %sub.sink, 0
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %sub.sink to i64
  %arrayidx = getelementptr inbounds [110 x i8], ptr @s, i64 0, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %conv1 = sext i8 %0 to i32
  %cmp2 = icmp eq i32 %conv1, 32
  br i1 %cmp2, label %if.then, label %for.inc11

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %j) #5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %if.then
  %.sink = phi i32 [ %sub.sink, %if.then ], [ %add, %for.inc ]
  %add = add nsw i32 %.sink, 1
  %1 = load i32, ptr %pre, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %add, %1
  br i1 %cmp4, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond3
  %idxprom7 = sext i32 %add to i64
  %arrayidx8 = getelementptr inbounds [110 x i8], ptr @s, i64 0, i64 %idxprom7
  %2 = load i8, ptr %arrayidx8, align 1, !tbaa !9
  %call9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %2)
  br label %for.cond3, !llvm.loop !10

for.end:                                          ; preds = %for.cond3
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #7
  %call10 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  store i32 %sub.sink, ptr %pre, align 4, !tbaa !5
  br label %for.inc11

for.inc11:                                        ; preds = %for.body, %for.end
  %dec = add nsw i32 %sub.sink, -1
  br label %for.cond, !llvm.loop !13

for.end12:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %i) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j13) #5
  store i32 0, ptr %j13, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc21, %for.end12
  %3 = load i32, ptr %j13, align 4, !tbaa !5
  %4 = load i32, ptr %pre, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %3, %4
  br i1 %cmp15, label %for.inc21, label %for.end23

for.inc21:                                        ; preds = %for.cond14
  %idxprom18 = sext i32 %3 to i64
  %arrayidx19 = getelementptr inbounds [110 x i8], ptr @s, i64 0, i64 %idxprom18
  %5 = load i8, ptr %arrayidx19, align 1, !tbaa !9
  %call20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %5)
  %inc22 = add nsw i32 %3, 1
  store i32 %inc22, ptr %j13, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !14

for.end23:                                        ; preds = %for.cond14
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %j13) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %pre) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #4 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef @s, i64 noundef 110)
  call void @_Z7operatev()
  ret i32 0
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #0 align 2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nosync nounwind willreturn memory(read) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
