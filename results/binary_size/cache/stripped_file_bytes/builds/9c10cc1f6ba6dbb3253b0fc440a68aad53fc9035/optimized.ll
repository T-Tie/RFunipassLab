; ModuleID = '<stdin>'
source_filename = "/tmp/tmpnf8my731.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %before = alloca [500 x [40 x i8]], align 16
  %c = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #8
  call void @llvm.lifetime.start.p0(i64 noundef 20000, ptr noundef nonnull align 16 %before) #8
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull dereferenceable(1) %c) #8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %for.cond20

while.body:                                       ; preds = %for.cond, %while.body
  %targetBlock = call fastcc i1 @outlined_ir_func_1(ptr noalias nofree noundef nonnull writeonly captures(none) dereferenceable(1) %c)
  br i1 %targetBlock, label %while.end, label %while.body

while.end:                                        ; preds = %while.body
  %1 = load i8, ptr %c, align 1, !tbaa !9
  store i8 %1, ptr %before, align 16, !tbaa !9
  br label %while.body8

while.body8:                                      ; preds = %while.end, %if.end
  %p.0 = phi ptr [ %before, %while.end ], [ %incdec.ptr, %if.end ]
  %targetBlock1 = call fastcc i1 @outlined_ir_func_1(ptr noalias nofree noundef nonnull writeonly captures(none) dereferenceable(1) %c)
  br i1 %targetBlock1, label %if.end, label %for.inc

if.end:                                           ; preds = %while.body8
  %2 = load i8, ptr %c, align 1, !tbaa !9
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %p.0, i64 1
  store i8 %2, ptr %incdec.ptr, align 1, !tbaa !9
  br label %while.body8, !llvm.loop !10

for.inc:                                          ; preds = %while.body8
  %incdec.ptr19 = getelementptr inbounds nuw i8, ptr %p.0, i64 1
  store i8 0, ptr %incdec.ptr19, align 1, !tbaa !9
  br label %for.cond

for.cond20:                                       ; preds = %for.cond, %for.inc60
  %3 = phi i32 [ %.pre, %for.inc60 ], [ %0, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc60 ], [ 0, %for.cond ]
  %sum.0 = phi i32 [ %inc.i5, %for.inc60 ], [ 0, %for.cond ]
  %cmp21 = icmp sgt i32 %3, 0
  br i1 %cmp21, label %for.body22, label %for.end62

for.body22:                                       ; preds = %for.cond20
  %call24 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %before) #9
  %conv25 = trunc i64 %call24 to i32
  %add = add nsw i32 %sum.0, %conv25
  %add26 = add nsw i32 %add, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx30 = getelementptr inbounds nuw [500 x [40 x i8]], ptr %before, i64 0, i64 %indvars.iv.next
  %call32 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx30) #9
  %4 = trunc i64 %call32 to i32
  %conv34 = add i32 %add26, %4
  %cmp35 = icmp sgt i32 %add, 80
  br i1 %cmp35, label %if.then36, label %if.end47

if.then36:                                        ; preds = %for.body22
  %5 = add i64 %call24, 1
  %add44 = add i64 %5, %call32
  %conv45 = trunc i64 %add44 to i32
  %call46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end47

if.end47:                                         ; preds = %if.then36, %for.body22
  %sum.1 = phi i32 [ %conv25, %if.then36 ], [ %add, %for.body22 ]
  %sum1.0 = phi i32 [ %conv45, %if.then36 ], [ %conv34, %for.body22 ]
  %arrayidx49 = getelementptr inbounds nuw [500 x [40 x i8]], ptr %before, i64 0, i64 %indvars.iv
  %call51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx49)
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %sub = add nsw i32 %6, -1
  %7 = sext i32 %sub to i64
  %cmp52 = icmp slt i64 %indvars.iv, %7
  %cmp53 = icmp slt i32 %sum1.0, 81
  %or.cond = select i1 %cmp52, i1 %cmp53, i1 false
  br i1 %or.cond, label %if.then54, label %for.inc60

if.then54:                                        ; preds = %if.end47
  %call55 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str)
  %.pre.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc60

for.inc60:                                        ; preds = %if.end47, %if.then54
  %.pre = phi i32 [ %6, %if.end47 ], [ %.pre.pre, %if.then54 ]
  %inc.i5 = add nsw i32 %sum.1, 1
  br label %for.cond20

for.end62:                                        ; preds = %for.cond20
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %c) #10
  call void @llvm.lifetime.end.p0(i64 noundef 20000, ptr noundef nonnull %before) #10
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc noundef i1 @outlined_ir_func_1(ptr noalias nofree noundef nonnull writeonly captures(none) dereferenceable(1) initializes((0, 1)) %0) unnamed_addr #6 {
while.body_to_outline:
  %call2 = tail call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %conv = trunc i32 %call2 to i8
  store i8 %conv, ptr %0, align 1, !tbaa !9
  %sext = shl i32 %call2, 24
  %switch.selectcmp.case1 = icmp ne i32 %sext, 536870912
  %switch.selectcmp.case2 = icmp ne i32 %sext, 167772160
  %switch.selectcmp.not = and i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  ret i1 %switch.selectcmp.not
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind }

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
