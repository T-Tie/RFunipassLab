; ModuleID = '<stdin>'
source_filename = "/tmp/tmpqxreubj9.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z12compose_wordPA25_ci(ptr noundef nonnull dereferenceable(1) %word, i32 noundef %number) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @strlen(ptr nofree noundef nonnull readonly dereferenceable(1) %word) #7
  %conv = trunc i64 %call to i32
  %0 = sext i32 %number to i64
  %1 = add nsw i64 %0, -1
  br label %for.cond

for.cond:                                         ; preds = %while.end.thread, %entry
  %len.0 = phi i32 [ %conv, %entry ], [ %len.1, %while.end.thread ]
  %i.0 = phi i32 [ 0, %entry ], [ %3, %while.end.thread ]
  %cmp = icmp slt i32 %i.0, %number
  br i1 %cmp, label %while.cond.preheader, label %for.end

while.cond.preheader:                             ; preds = %for.cond
  %2 = sext i32 %i.0 to i64
  br label %while.cond

while.cond:                                       ; preds = %while.cond.preheader, %if.end10
  %indvars.iv = phi i64 [ %2, %while.cond.preheader ], [ %indvars.iv.next, %if.end10 ]
  %phiofops = phi i1 [ false, %while.cond.preheader ], [ true, %if.end10 ]
  %len.1 = phi i32 [ %len.0, %while.cond.preheader ], [ %conv15, %if.end10 ]
  %count.1 = phi i32 [ 0, %while.cond.preheader ], [ %add6, %if.end10 ]
  %add = add nsw i32 %count.1, %len.1
  %cmp1 = icmp slt i32 %add, 80
  br i1 %cmp1, label %while.body, label %while.end.thread

while.end.thread:                                 ; preds = %while.cond
  %3 = trunc nsw i64 %indvars.iv to i32
  %call162 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.cond, !llvm.loop !5

while.body:                                       ; preds = %while.cond
  br i1 %phiofops, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %call2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i8 noundef signext 32)
  %inc = add nsw i32 %count.1, 1
  br label %if.end

if.end:                                           ; preds = %while.body, %if.then
  %count.2 = phi i32 [ %inc, %if.then ], [ %count.1, %while.body ]
  %arrayidx3 = getelementptr inbounds [25 x i8], ptr %word, i64 %indvars.iv
  %call5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, ptr noundef nonnull %arrayidx3)
  %exitcond.not = icmp eq i64 %indvars.iv, %1
  br i1 %exitcond.not, label %while.end, label %if.end10

if.end10:                                         ; preds = %if.end
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %add6 = add nsw i32 %count.2, %len.1
  %arrayidx12 = getelementptr inbounds [25 x i8], ptr %word, i64 %indvars.iv.next
  %call14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx12) #8
  %conv15 = trunc i64 %call14 to i32
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %if.end
  %call16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.end

for.end:                                          ; preds = %for.cond, %while.end
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #0 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #4 {
entry:
  %number = alloca i32, align 4
  %word = alloca [1000 x [25 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %number) #9
  store i32 0, ptr %number, align 4, !tbaa !9
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %number)
  %call1 = call i32 @getchar()
  call void @llvm.lifetime.start.p0(i64 noundef 25000, ptr noundef nonnull align 16 captures(none) dereferenceable(25000) %word) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 captures(none) dereferenceable(25000) %word, i8 noundef 0, i64 noundef 25000, i1 noundef false)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %number, align 4, !tbaa !9
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x [25 x i8]], ptr %word, i64 0, i64 %indvars.iv
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  call void @_Z12compose_wordPA25_ci(ptr noundef nonnull align 16 dereferenceable(25000) %word, i32 noundef %0)
  call void @llvm.lifetime.end.p0(i64 noundef 25000, ptr noundef nonnull %word) #10
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %number) #10
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
declare i32 @getchar() local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nosync nounwind willreturn memory(read) }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nofree nounwind willreturn }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = distinct !{!8, !6, !7}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C++ TBAA"}
!13 = distinct !{!13, !6, !7}
