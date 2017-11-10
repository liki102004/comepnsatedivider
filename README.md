# A new Approximate Divider with Error Compensating
- In recent years, energy efficiency has emerged as one of most critical criteria in designing computing systems. A
low-power approximate divider was proposed and analyzed in the image processing application [1]. The
approximate divide takes log values for the dividend and divisor through the leading one detector (LOD) and
priority encoder.  Then, the difference between these two values becomes the amount of the
barrel shift. The dividend and divisor are truncated to k bits (4, 6, or 8 in this study) and k/2 bits, respectively.
Finally, the output of the truncated division is shifted to generate the approximated result. However, the maximum
error distance in [1] becomes relatively high for certain inputs. For example, when n is 16, k is 8, and the divisor
is 8b’10110000 (176), the truncated divisor is 4b’1011. On the other hand, when the divisor is 8b’10111111 (191),
the approximated divisor also becomes 4b’1011. Thus, the results of two different division will be same and the
error distance for the second case will be high if the dividends are same because the shift amount is identical as
well due to the limitation of the paper. We propose a new approximate divider structure with an adaptive barrel
shifter with error compensation to reduce the maximum error distance. At the adaptive barrel shifter, a compensate
signal is generated if the MSB of truncated bit is ‘1’and the ‘OR’ed result of remainder bits.
When the compensate signal is generated and the shift amount is bigger than two, then the final result is obtained
by subtracting 3’b111 (8 in decimal in this study). Otherwise, when the compensate signal does not exist, the barrel
shifter operates normally. Table I summarizes error metrics between the proposed design and [1]. For the proposed
divider, the maximum error distance reduced up to 27% when k = 8 and the size decreases approximately 55% from the accurate divider.
- [1] Hashemi, Soheil, R. Bahar, and Sherief Reda, DAC 2016.

2017_Kwangwoon Uivierstiy_Computer Enginerring_Capstone design
-
-
