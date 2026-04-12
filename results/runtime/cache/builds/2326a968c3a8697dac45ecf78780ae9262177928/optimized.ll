; ModuleID = '<stdin>'
source_filename = "/tmp/tmpkljy3bak.cpp"
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

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [100 x [100 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 10000, ptr noundef %a) #5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %phiofops2 = phi i32 [ -1, %entry ], [ %i.0, %while.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %while.body ]
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i8]], ptr %a, i64 0, i64 %idxprom
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef %arrayidx, i64 noundef 101, i8 noundef signext 32)
  %vtable = load ptr, ptr %call, align 8, !tbaa !5
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !8
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 %vbase.offset
  %call1 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr)
  br i1 %call1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %inc = add nsw i32 %i.0, 1
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %phiofops2.lcssa = phi i32 [ %phiofops2, %while.cond ]
  %i.0.lcssa = phi i32 [ %i.0, %while.cond ]
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %k.0 = phi i32 [ 0, %while.end ], [ %inc13, %for.inc ]
  %cmp = icmp slt i32 %k.0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom2 = sext i32 %phiofops2.lcssa to i64
  %arrayidx3 = getelementptr inbounds [100 x [100 x i8]], ptr %a, i64 0, i64 %idxprom2
  %idxprom4 = sext i32 %k.0 to i64
  %arrayidx5 = getelementptr inbounds [100 x i8], ptr %arrayidx3, i64 0, i64 %idxprom4
  %0 = load i8, ptr %arrayidx5, align 1, !tbaa !12
  %conv = sext i8 %0 to i32
  %cmp6 = icmp eq i32 %conv, 0
  br i1 %cmp6, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %sub10 = sub nsw i32 %k.0, 1
  %idxprom11 = sext i32 %sub10 to i64
  %arrayidx12 = getelementptr inbounds [100 x i8], ptr %arrayidx3, i64 0, i64 %idxprom11
  store i8 0, ptr %arrayidx12, align 1, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %inc13 = add nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc25, %for.end
  %j.0 = phi i32 [ 0, %for.end ], [ %inc26, %for.inc25 ]
  %cmp16 = icmp slt i32 %j.0, %phiofops2.lcssa
  br i1 %cmp16, label %for.inc25, label %for.end27

for.inc25:                                        ; preds = %for.cond14
  %j.0.neg = sub i32 0, %j.0
  %sub18 = add i32 %i.0.lcssa, -1
  %sub19 = add i32 %sub18, %j.0.neg
  %idxprom20 = sext i32 %sub19 to i64
  %arrayidx21 = getelementptr inbounds [100 x [100 x i8]], ptr %a, i64 0, i64 %idxprom20
  %call23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %arrayidx21)
  %call24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %call23, i8 noundef signext 32)
  %inc26 = add nsw i32 %j.0, 1
  br label %for.cond14, !llvm.loop !15

for.end27:                                        ; preds = %for.cond14
  %call30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %a)
  call void @llvm.lifetime.end.p0(i64 noundef 10000, ptr noundef %a) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"vtable pointer", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!13, !13, i64 0}
!13 = !{!"omnipotent char", !7, i64 0}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
